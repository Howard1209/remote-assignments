import { getUsers, getUser, createUser, checkEmail} from '../database/database.js'

import { Router } from 'express';
const router = Router();

router.get('/',(req,res) => {
    res.render('home', { message: '' });
});

// login
router.post("/login", async(req, res) => {
    const email = req.body.email;
    const password = req.body.password;
    const user = await getUser(email, password);
    if (user) {
        return res.redirect('/member');
    }
    res.render('home', { message: 'Email or password is incorrect' });
});
//signup
router.post("/signup", async(req, res) => {
    const email = req.body.email;
    const password = req.body.password;
    const passwordConfirm = req.body.passwordConfirm;
    const emailSql = await checkEmail(email);
    if (emailSql) {
        return res.render('home', { message: 'Email has been registered' });
    } else if (password !== passwordConfirm) {
        return res.render('home', { message: 'Pleare confirm the passwaord' });
    }
    const user = await createUser(email,password);
    return res.redirect('/member');
});


export default router;