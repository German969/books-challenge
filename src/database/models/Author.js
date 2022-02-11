module.exports = (sequelize, dataTypes) => {
  let alias = 'Author';
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

  const Author = sequelize.define(alias, cols, config);
  return Author;
};
