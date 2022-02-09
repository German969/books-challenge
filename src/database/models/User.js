module.exports = (sequelize, dataTypes) => {
  let alias = 'Users';
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
    },
    Pass: {
      type: dataTypes.STRING
    },
    CategoryId: {
      type: dataTypes.INTEGER
    }
  };
  let config = {
    tableName: 'Users',
    timestamps: false
  };

  const Users = sequelize.define(alias, cols, config);
  return Users;
};
