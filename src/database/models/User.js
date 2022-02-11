module.exports = (sequelize, dataTypes) => {
  let alias = 'User';
  let cols = {
    Id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    Name: {
      type: dataTypes.STRING
    },
    Email: {
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

  const User = sequelize.define(alias, cols, config);

  User.associate = function (models) {
    User.belongsTo (models.Categorie, {
      as: "category",
      foreingKey: "CategoryId"
    })
  }
  return User;
};
