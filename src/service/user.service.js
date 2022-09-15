const connection = require('../app/database');
const crypto = require("crypto");

class UserService {
  async create(user) {
    const { username, password, role } = user;
    const statement = `INSERT INTO user (username, password,role) VALUES (?, ?, ?);`;
    const result = await connection.execute(statement, [username, password,role]);

    return result[0];
  }

  async getUserByName(username) {
    const statement = `SELECT * FROM user WHERE username = ?;`;
    const result = await connection.execute(statement, [username]);

    return result[0];
  }

  async updateAvatarUrlById(avatarUrl, userId) {
    const statement = `UPDATE user SET avatar_url = ? WHERE id = ?;`;
    const [result] = await connection.execute(statement, [avatarUrl, userId]);
    return result;
  }

  async getUserList(page, size , username){
    const statement = `SELECT * FROM user WHERE username LIKE ?`;
    const [result] = await connection.execute(statement,[`%${username}%`]);
    return result
  }

  async getUserTotal(username){
    const statement = `SELECT * FROM user WHERE username LIKE ?`;
    const [result] = await connection.execute(statement,[`%${username}`])
    return result.length
  }

  async updateUserinfo(username,password,role){
    const statement = `UPDATE user SET username = ? , password = ? , role = ? WHERE username =?`
    const [result] = await connection.execute(statement,[username,password,role,username])
    return result
  }

  async deleteUser(username){
    const statement = `DELETE FROM user WHERE username = ?;`;
    const [result] = await connection.execute(statement,[username])
    return result
  }
}

module.exports = new UserService();
