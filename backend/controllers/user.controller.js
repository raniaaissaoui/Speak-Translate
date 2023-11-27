const { User, generateUserAuthToken } = require('../models/user.model.js');
const httpStatus = require('http-status-codes').StatusCodes;
const bcrypt = require('bcrypt');

const userController = {
  registerUser: async (req, res) => {
    const { name, email, password } = req.body;

    const existingUser = await User.findOne({ where: { email } });
    if (existingUser)
      return res
        .status(httpStatus.BAD_REQUEST)
        .json({ message: 'You are already registered' });

    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);

    const newUser = await User.create({
      name,
      email,
      password: hashedPassword,
    });

    const token = generateUserAuthToken(newUser);

    const sanitizedUser = { ...newUser.get() };
    delete sanitizedUser.password;

    res
      .status(httpStatus.CREATED)
      .header('x-auth-token', token)
      .json({ message: 'User registered succesfully', user: sanitizedUser });
  },

  getMyUser: async (req, res) => {
    const user = await User.findByPk(req.user.id);

    if (!user) {
      console.warn('User not found');
      return res.status(httpStatus.NOT_FOUND).json({ error: 'User not found' });
    }

    const sanitizedUser = { ...user.get() };
    delete sanitizedUser.password;

    res.status(httpStatus.OK).json(sanitizedUser);
  },

  updateMyUser: async (req, res) => {
    const user = await User.findByPk(req.user.id);

    if (!user) {
      console.warn('User not found');
      return res.status(httpStatus.NOT_FOUND).json({ error: 'User not found' });
    }

    Object.assign(user, req.body);

    await user.save();
  },

  deleteUser: async (req, res) => {
    const user = await User.destroy({
      where: { id: req.user.id },
    });

    if (!user) {
      console.warn('User not found');
      return res.status(httpStatus.NOT_FOUND).json({ error: 'User not found' });
    }

    res.status(httpStatus.OK).json({ message: 'User deleted successfully' });
  },
};

module.exports = userController;
