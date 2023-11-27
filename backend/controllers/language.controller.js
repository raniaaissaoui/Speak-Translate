const { Language } = require('../models/language.model.js');
const httpStatus = require('http-status-codes').StatusCodes;

const languageController = {
  getLanguages: async (req, res) => {
    const languages = await Language.findAll({
      attributes: [
        ['id', 'no'], // Rename 'id' field to 'no' in the response
        'name',
        'code',
        'native'
      ]
    });

    if (languages.length == 0) {
      console.warn('Languages not found');
      return res
        .status(httpStatus.NOT_FOUND)
        .json({ error: 'Languages not found' });
    }

    const modifiedLanguages = languages.map((language) => {
      console.log(language.dataValues.name);
      return {
        no: language.dataValues.no.toString(),
        name: language.dataValues.name,
        code: language.dataValues.code,
        native: language.dataValues.native
      };
    });

    res.status(httpStatus.OK).json(modifiedLanguages);
  },
};

module.exports = languageController;
