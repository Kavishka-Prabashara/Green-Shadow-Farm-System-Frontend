/*
const userDAO = require("../dao/UserDAO");
const bcrypt = require("bcrypt");

exports.createUser = async (userData) => {
    // Hash the password
    const passwordHash = await bcrypt.hash(userData.password, 10);

    // Prepare the data object
    const newUser = {
        email: userData.email,
        firstName: userData.firstName,
        lastName: userData.lastName,
        birthDate: userData.birthDate,
        nic: userData.nic,
        passwordHash,
    };

    // Call DAO to save user
    return await userDAO.saveUser(newUser);
};
*/
