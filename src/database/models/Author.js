module.exports = (sequelize, dataTypes) => {
  let alias = 'Authors';
  let cols = {
    Id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    Name: {
      type: dataTypes.STRING
    },
    Country: {
      type: dataTypes.STRING
    }
  };
  let config = {
    tableName: 'Authors',
    timestamps: false
  };

  const Authors = sequelize.define(alias, cols, config);
  return Authors;
};
