/*
const db = require("../db/db"); // Assumes a DB connection setup

exports.saveUser = async (user) => {
    const query = `
        INSERT INTO users (email, first_name, last_name, birth_date, nic, password_hash)
        VALUES (?, ?, ?, ?, ?, ?)
    `;
    const params = [user.email, user.firstName, user.lastName, user.birthDate, user.nic, user.passwordHash];
    const [result] = await db.execute(query, params); // Adjust based on your DB library
    return { id: result.insertId };
};
*/
