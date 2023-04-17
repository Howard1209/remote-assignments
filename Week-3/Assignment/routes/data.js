const express = require('express');
const router = express.Router();

router.get('/',(req,res) => {
    const { number } = req.query;
    let ans = '';
    if (!number) {
        ans = 'Lack of Parameter';
    } else if (!isNaN(number) && Number(number) > 0) {
        let num = Number(number);
        ans = num * (num+ 1) / 2;
    } else if (number.toUpperCase() === 'N') {
        ans = 'n*(n+1)/2'
    } else ans = "Wrong Parameter";
    res.render('data', {ans});
});

module.exports = router;

//先留著思考