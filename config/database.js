const mysql = require('mysql');
// buat konfigurasi connDB
const connDB = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'kasir_alceoone',
    multipleStatements: true
});
// connDB database
connDB.connect((err) => {
    if (err) throw err;
    console.log('MySQL Connected...');
});
module.exports = connDB;