const express = require("express");
const port = 3000;
const app = express();
const database = require("./database/db");
const cors = require("cors");
const bodyparser = require('body-parser');

app.get("/", (req, res) => {
    res.send("hello world");
});

app.use(
    bodyparser.urlencoded({
      extended: true,
    })
);

app.use(cors());

app.use(express.json());

app.listen(port, () => {
    console.log(`server masuk ${port}`);
});

app.post("/login", (req, res) => {
    database.query(`SELECT * FROM users WHERE nip = '${req.body.nip}' AND password = '${req.body.pass}'`,(err, result) => {
            console.log(result);
            if (err){
                return res.status(400).json({
                    status: 400,
                    error: true,
                    message: err.message
                });
            } else {
                if(result.length === 0) {
                    res.status(400).json({
                    message: "NIP Not Found",
                    status: 400
                })} else{
                    return res.status(200).json({
                        status: 200,
                        error: false,
                        message: "Successfully Login"
                    });
                }
            }
        });
})

app.get("/products", (req, res) => {
    database.query("SELECT * FROM products", (err, result) => {
        if (err){
            return res.status(400).json({
                status: 400,
                error: true,
                message: err.message
            })
        } else {
            return res.status(200).json({
                status: 200,
                error: false,
                data: result,
                message: "Successfully Find Product"
            })
        }
    })
});

app.post("/createReceipt", (req, res) => {
    console.log(req.body.transaction);
    database.query(`INSERT INTO transaction_history (log_transaction)
        VALUES ('${req.body.transaction}')`, (err, result) => {
            console.log(result);
            if (err){
                return res.status(400).json({
                    status: 400,
                    error: true,
                    message: err.message
                });
            } else {
                return res.status(200).json({
                    status: 200,
                    error: false,
                    data: result,
                    message: "Successfully Add Transaction"
                });
            }
        });
});

app.get("/transactionHistory", (req, res) => {
    database.query("SELECT * FROM transaction_history", (err, result) => {
        if (err){
            return res.status(400).json({
                status: 400,
                error: true,
                message: err.message
            })
        } else {
            return res.status(200).json({
                status: 200,
                error: false,
                data: result,
                message: "Successfully Find Transaction History"
            })
        }
    })
});