const express = require('express');
const languageController = require("../controllers/language.controller.js");
const authentication = require('../middlewares/authentication.js');

const router = express.Router();

router.get('/', authentication, languageController.getLanguages);

module.exports = router;