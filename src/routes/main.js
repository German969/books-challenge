const express = require('express');
const mainController = require('../controllers/main');

const router = express.Router();

router.get('/', mainController.home);
router.get('/books/detail/:id', mainController.bookDetail);
router.get('/books/search', mainController.bookSearch);
router.post('/books/search', mainController.bookSearchResult);
router.get('/authors', mainController.authors);
router.get('/authors/:id/books', mainController.authorBooks);
router.get('/register', mainController.register);
router.post('/register', mainController.processRegister);
router.get('/login', mainController.login);
router.post('/login', mainController.processLogin);
router.delete('/books/:id', mainController.deleteBook);
router.get('/edit/:id', mainController.edit);
router.post('/edit/:id', mainController.processEdit);

module.exports = router;
