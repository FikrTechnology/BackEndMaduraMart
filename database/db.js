const mysql = require("mysql2");

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'madura_mart'
});

connection.connect((err) => {
    if (err){
        console.log(err);
        process.exit(1)
    } else {
        console.log('masuk gan ');
    }
});

module.exports = connection