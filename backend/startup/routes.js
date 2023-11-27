const express = require('express');
require('express-async-errors');
const cors = require('cors');
const auth = require('../routes/auth.route.js');
const user = require('../routes/user.route.js');
const translations = require('../routes/translation.route.js');
const language = require('../routes/language.route.js');
const error = require('../middlewares/error');

module.exports = (app) => {
  app.use(express.json());
  app.use(
    cors({
      exposedHeaders: ['x-auth-token'],
    })
  );
  app.use('/api/auth', auth);
  app.use('/api/users', user);
  app.use('/api/translations', translations);
  app.use('/api/languages', language);
  app.use(error);
};
