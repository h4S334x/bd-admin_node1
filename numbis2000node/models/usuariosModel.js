var pool = require('./bd');
var md5 = require('md5');

async function getUserByUsernameAndPassword(user, password) {
    try {
        var query = "select * from usuarios where usuario = ? and password = ? limit 1";
        var rows = await pool.query(query, [user, md5(password)]);
        return rows[0];
    } catch (error) {
        throw error;
    }
}


async function getUserByUsername(user) {
    var query = "select * from usuarios where usuario = ? limit 1";
    var rows = await pool.query(query, [user]);
    return rows[0];
}

async function insertUser(user, password) {
    var query = "insert into usuarios set ?";
    return await pool.query(query, [{ usuario: user, password: md5(password) }]);
}

module.exports = { getUserByUsernameAndPassword, getUserByUsername, insertUser }