module.exports = (sequelize, dataTypes) => {
    let alias = 'Book';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        title: {
            type: dataTypes.STRING,
            allowNull: false
        },
        
    }
    let config = {
        tableName: 'books',
        timestamps: false
    }
    const Book = sequelize.define(alias, cols, config);

    Book.associate = function (models) {
        Book.belongsToMany (models.Authors, {
            as: "bookAuthor",
            through: "booksauthors",
            foreingKey: "BookId",
            otherKey: "AuthorId",
            timestamps:false
        })
    } 

    return Book;
}