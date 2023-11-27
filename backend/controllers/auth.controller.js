const bcrypt = require('bcrypt');
const httpStatus = require('http-status-codes').StatusCodes;
const { User, generateUserAuthToken } = require('../models/user.model.js');

const authController = {
  login: async (req, res) => {
    const { email, password } = req.body;

    const user = await User.findOne({
      where: { email: email },
    });

    if (!user) {
      console.warn('Invalid email or password');
      return res
        .status(httpStatus.UNAUTHORIZED)
        .json({ error: 'Invalid email or password' });
    }

    const validPassword = await bcrypt.compare(password, user.password);

    if (!validPassword) {
      console.warn('Invalid username/email or password');
      return res
        .status(httpStatus.UNAUTHORIZED)
        .json({ error: 'Invalid username/email or password' });
    }

    const token = generateUserAuthToken(user);

    res
      .status(httpStatus.OK)
      .header('x-auth-token', token)
      .json({ message: 'Login Successful!' });
  },
};

module.exports = authController;
