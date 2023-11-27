const { DataTypes } = require('sequelize');
const { sequelize } = require('../startup/db');

const Language = sequelize.define(
  'languages',
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
    native: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    code: {
      type: DataTypes.STRING,
      allowNull: false,
    }
  },
  {
    sequelize,
    modelName: 'Language',
    tableName: 'languages',
    timestamps: false,
  }
);

module.exports = { Language };
