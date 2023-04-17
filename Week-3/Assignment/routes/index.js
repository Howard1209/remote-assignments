const express = require('express');
const router = express.Router();

router.get('/',(req,res) => {
    res.render('index');
});

// myName
router.get('/myName',(req,res) => {
    const name = req.cookies.username;
    res.render('myName', { name });
});
//form
router.get('/trackName',(req,res) => {
    const { name } = req.query;
    if (name) {
        res.cookie('username', name);
      }
    res.redirect('/myName');
});

router.post('/goodbye',(req, res) => {
    res.clearCookie('username');
    res.redirect('/myName');
});

module.exports = router;