const { DataTypes } = require('sequelize');
const { sequelize } = require('../startup/db');
const jwt = require('jsonwebtoken');

const User = sequelize.define(
  'users',
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
    }
  },
  {
    sequelize,
    modelName: 'User',
    tableName: 'users',
    timestamps: false,
  }
);

function generateUserAuthToken(user) {
  const token = jwt.sign(
    {
      id: user.id,
      name: user.name,
      email: user.email
    },
    process.env.TRANSLATION_JWT_PRIVATE_KEY
  );
  return token;
}

module.exports = { User, generateUserAuthToken };
