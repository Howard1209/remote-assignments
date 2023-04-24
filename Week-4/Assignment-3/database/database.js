import mysql from 'mysql2'
import dotenv from 'dotenv'
dotenv.config()

const pool = mysql.createPool({  // create a pool
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWWOD,
    database: process.env.MYSQL_DATABASE
}).promise()

export async function getUsers() {
    const [rows] = await pool.query("SELECT * FROM user")
    return rows
}

export async function getUser(email, password) {
    const[rows] = await pool.query(`
    SELECT * FROM user WHERE email = ? AND password = ?
    `, [email, password])
    return rows[0]
}

export async function createUser(email, password) {
    const [result] = await pool.query(`
    INSERT INTO user (email, password)
    VALUES (?, ?)
    `, [email, password])
    const id = result.insertId
    return getUser(id)
}

export async function checkEmail(email) {
    const[rows] = await pool.query(`
    SELECT * FROM user WHERE email = ?
    `, [email])
    return rows[0]
}

