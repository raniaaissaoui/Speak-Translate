const express = require('express');
const translationController = require("../controllers/translation.controller.js");
const authentication = require('../middlewares/authentication.js');

const router = express.Router();

router.post('/', authentication, translationController.addTranslation);
router.get('/', authentication, translationController.getTranslation);

module.exports = router;