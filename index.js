const express = require('express');
const hbs = require('hbs');
const wax = require('wax-on');
require('dotenv').config();
const { createConnection } = require('mysql2/promise');

let app = express();
app.set('view engine', 'hbs');
app.use(express.static('public'));
app.use(express.urlencoded({extended:false}));

wax.on(hbs.handlebars);
wax.setLayoutPath('./views/layouts');

let connection;

async function main() {
    connection = await createConnection({
        'host': process.env.DB_HOST,
        'user': process.env.DB_USER,
        'database': process.env.DB_NAME,
        'password': process.env.DB_PASSWORD
    })

    app.get('/customers', async (req, res) => {
        let [customers] = await connection.execute({
            'sql':`
            SELECT * from Customers
                JOIN Companies ON Customers.company_id = Companies.company_id;
            `,
            nestTables: true

        });
        res.render('customers/index', {
            'customers': customers
        })
        console.log(customers);
    })

    app.get('/customers/create', async(req,res)=>{
        let [companies] = await connection.execute('SELECT * from Companies');
        res.render('customers/create', {
            'companies': companies
        })
    })
    
    app.get('/', (req,res) => {
        res.redirect("customers");
        //res.send('Hello, World!');
    });

    app.listen(3000, ()=>{
        console.log('Server is running')
    });
}

main();
