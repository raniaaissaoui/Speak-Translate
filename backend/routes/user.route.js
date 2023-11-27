const express = require('express');
const userController = require("../controllers/user.controller.js");
const authentication = require('../middlewares/authentication.js');

const router = express.Router();

router.post('/', userController.registerUser);
router.get('/me', authentication, userController.getMyUser);
router.patch('/me', authentication, userController.updateMyUser);
router.delete('/me', authentication, userController.deleteUser);

module.exports = router;