const express = require('express');
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser'); 

const app = express()
app.use(bodyParser.urlencoded({ extended: true}));
app.use(cookieParser());
app.use(express.static('public'));

app.set('view engine', 'pug');  // set a pug
// 匯入 routes
const mainRoutes = require('./routes');
const dataRoutes = require('./routes/data');
// const myNameRoutes = require('./routes/myName');
app.use(mainRoutes);
app.use('/data', dataRoutes);
// app.use('/myName', myNameRoutes);

//create error object & handle error handler
app.use((req, res, next) => {
    const err = new Error('Not found');
    err.status = 404;
    next(err); 
});
// // error middleware
app.use((err, req, res, next) => {
    res.locals.error =  err;
    res.status(err.status);
    res.render('error')
});

app.listen(3000, () => {
  console.log("The application running on localhost:3000");
});