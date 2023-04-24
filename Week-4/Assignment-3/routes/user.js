import { getUsers, getUser, createUser } from '../database/database.js'

import { Router } from 'express';
const router = Router();

router.post("/", async(req, res) => {
    const email = req.body.email;
    const password = req.body.password;
    const user = await getUser(email, password);
    if (user) {
        return res.render('member');
    }
    res.render('home', { message: 'please sign up' });
});




export default router;