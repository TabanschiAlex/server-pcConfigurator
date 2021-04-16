const MainModel = require('./MainModel');
const bcrypt = require('bcrypt');
const moment = require('moment');

class AuthModel extends MainModel {
    table = 'users';

    async register(login, password) {
        try {
            const hashedPassword = await bcrypt.hash(password, 10);

            await this.db.query(
                `INSERT INTO 
                    ${this.table} 
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
        try {
            const user = await this.db.query(
                `SELECT
                    *
                 FROM
                    ${this.table}
                 WHERE
                    username = ?`,
                [login]
            );

            if (user && await bcrypt.compare(password, user[0].password)) {
                const generatedToken = bcrypt.genSaltSync(2);

                await this.db.query(
                    `UPDATE
                    ${this.table}
                 SET
                    token = ?,
                    token_expires = ?
                 WHERE id = ?`,
                    [
                        generatedToken,
                        moment().add(2, "hours").format( 'YYYY-MM-DD  HH:mm:ss.000'),
                        user[0].id
                    ]
                );

                return generatedToken;
            }

            return 'Username or password is incorrect!';
        } catch {
            return 'error';
        }
    }

    async isLogIn(login, token) {
        try {
            this.user = await this.db.query(
                `SELECT
                    *
                 FROM
                    ${this.table}
                 WHERE
                    username = ?`,
                [login]
            );

            return token === this.user[0].token && moment(this.user[0]['token_expires']) >= moment();
        } catch {
            return false;
        }
    }

    async logout(login, token) {
        try {
            const isLogIn = this.isLogIn(login, token);

            if (isLogIn) {
                await this.db.query(
                    `UPDATE
                    ${this.table}
                 SET
                    token_expires = ?
                 WHERE id = ?`,
                    [
                        moment().add(-1, "hours").format( 'YYYY-MM-DD  HH:mm:ss.000'),
                        this.user[0].id
                    ]
                );

                return true;
            }

            return false;
        } catch {
            return 'error';
        }
    }
}

module.exports = new AuthModel();
