const db = require('../database/models');

const mainController = {
  home: (req, res) => {
    db.Book.findAll({
      include: [{ association: 'authors' }]
    })
      .then((books) => {
        res.render('home', { books });
      })
      .catch((error) => console.log(error));
  },
  bookDetail: (req, res) => {
    // TODO look for details in the database
    res.render('bookDetail');
  },
  bookSearch: (req, res) => {
    res.render('search');
  },
  authors: (req, res) => {
    res.render('authors');
  }
};

module.exports = mainController;
