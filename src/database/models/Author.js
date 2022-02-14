module.exports = (sequelize, dataTypes) => {
  let alias = 'Author';
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    name: {
      type: dataTypes.STRING
    },
    country: {
      type: dataTypes.STRING
    }
  };
  let config = {
    tableName: 'Authors',
    timestamps: false
  };

  const Author = sequelize.define(alias, cols, config);

  Author.associate = function (models) {
    Author.belongsToMany(models.Book, {
      as: 'books',
      through: 'BooksAuthors',
      foreingKey: 'AuthorId',
      otherKey: 'BookId',
      timestamps: false
    });
  };

  return Author;
};
