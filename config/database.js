const mysql = require('mysql');
// buat konfigurasi connDB
const connDB = mysql.createConnection({
    host: 'host_kalian',
    user: 'username_kalian',
    password: 'password_kalian',
    database: 'nama_database',
    multipleStatements: true
});
// connDB database
connDB.connect((err) => {
    if (err) throw err;
    console.log('MySQL Connected...');
});
module.exports = connDB;