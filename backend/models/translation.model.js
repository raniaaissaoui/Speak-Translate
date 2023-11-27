const { DataTypes } = require('sequelize');
const { sequelize } = require('../startup/db');

const Translation = sequelize.define(
  'translations',
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    userId: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    text: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    translation: {
      type: DataTypes.STRING,
      allowNull: false,
    }
  },
  {
    sequelize,
    modelName: 'Translation',
    tableName: 'translations',
    timestamps: false,
  }
);

module.exports = { Translation };
