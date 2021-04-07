const MainModel = require("./MainModel");
const passport = require('passport')
const bcrypt = require('bcrypt');

class AuthModel extends MainModel {
    table = 'users';

    async register(login, password) {
        try {
            const hashedPassword = await bcrypt.hash(password, 10);

            await this.db.query(
                `INSERT INTO 
                    users 
                SET 
                    username = ?,
                    password = ?,
                    role_id = 2`,
                [login, hashedPassword]
            );

            return true;
        } catch {
            return false;
        }
    }

    async login(login, password) {

    }

}

module.exports = new AuthModel();
