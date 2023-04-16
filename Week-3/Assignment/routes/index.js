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
router.post('/trackName',(req,res) => {
    const username = req.body.name;
    if (username) {
        res.cookie('username', username);
      }
    res.redirect('/myName');
});

router.post('/goodbye',(req, res) => {
    res.clearCookie('username');
    res.redirect('/myName');
});

module.exports = router;