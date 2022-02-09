module.exports = (sequelize, dataTypes) => {
    let alias = 'Books';
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
    const User = sequelize.define(alias, cols, config);

    User.associate = function (models) {
        Books.belongsToMany (models.Authors, {
            as: "bookAuthor",
            through: "booksauthors",
            foreingKey: "BookId",
            otherKey: "AuthorId",
            timestamps:false
        })
    } 

    return User;
}