const express = require('express');

const app = express();

app.set('view engine', 'ejs');
app.set('views', 'src/views');

app.get('/', (req, res) => {
  res.render('home');
});

app.listen(3000, () => {
  console.log('listening in http://localhost:3000');
});
