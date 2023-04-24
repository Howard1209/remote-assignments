import express from 'express';
import cookieParser from 'cookie-parser'; 


const app = express()
app.set("view engine", "ejs");
app.use(express.json());
app.use(express.urlencoded({ extended: true}));
app.use(cookieParser());
app.use(express.static('public'));
// 匯入 routes
import mainRouter from './routes/index.js';
import memberRouter from './routes/member.js';

app.use("/", mainRouter);
app.use("/member", memberRouter);

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