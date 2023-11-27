const { Translation } = require('../models/translation.model.js');
const httpStatus = require('http-status-codes').StatusCodes;

const translationController = {
  addTranslation: async (req, res) => {
    const { text, translation } = req.body;

    const newTranslation = await Translation.create({
      userId: req.user.id,
      text,
      translation,
    });

    res
      .status(httpStatus.CREATED)
      .json({
        message: 'Translation added succesfully',
        translation: newTranslation,
      });
  },

  getTranslation: async (req, res) => {
    const translations = await Translation.findAll({ where: { userId: req.user.id } });

    if (translations.length == 0) {
      console.warn('Translations not found');
      return res.status(httpStatus.NOT_FOUND).json({ error: 'Translations not found' });
    }

    res.status(httpStatus.OK).json(translations);
  },
};

module.exports = translationController;
