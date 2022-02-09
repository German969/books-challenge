const db = require('../database/models');

const mainController = {
  home: (req, res) => {
    db.Book.findAll()
      .then((books) => {
        res.send(books);
        /* res.render('home', books); */
      })
      .catch((error) => console.log(error));
  },
  authors: (req, res) => {
    res.render('authors');
  }
};

module.exports = mainController;
