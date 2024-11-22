/*
const userService = require("../service/UserService");

exports.signUp = async (req, res) => {
    try {
        const { email, firstName, lastName, birthDate, nic, password } = req.body;

        // Call service for business logic
        const result = await userService.createUser({
            email,
            firstName,
            lastName,
            birthDate,
            nic,
            password,
        });

        res.status(201).json({ message: "User created successfully", userId: result.id });
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
};
*/
