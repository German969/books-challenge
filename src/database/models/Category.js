module.exports = (sequelize, dataTypes) => {
  let alias = 'Categorie';
  let cols = {
    Id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    Name: {
      type: dataTypes.STRING
    }
  };
  let config = {
    tableName: 'Categories',
    timestamps: false
  };

  const Categorie = sequelize.define(alias, cols, config);

  Categorie.associate = function (models) {
    Categorie.belongsTo (models.User, {
        as: "user",
        foreingKey: "id"
    })
  }

  return Categorie;
};
