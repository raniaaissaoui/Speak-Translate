require('dotenv').config();
const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(
  "translations_app_db",
  "root",
  "Rania@123",
  {
    host: process.env.DB_HOST,
    port: 3307,
    dialect: process.env.DB_DIALECT,
  }
);

const connectToDB = () => {
  sequelize
    .sync({ force: false })
    .then(() => {
      console.log('Database and tables synced');
    })
    .catch((error) => {
      console.error('Error syncing database:', error);
      process.exit(1);
    });
};

module.exports = { sequelize, connectToDB };
