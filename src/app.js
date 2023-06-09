const express = require('express');
const path = require('path');
const morgan = require('morgan');
const mysql = require('mysql');
const myConnection = require('express-myconnection');

const app = express();

//importamos rutas

const routes = require('./routes/idk');

//settings
app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

//middlewares
app.use(morgan('dev'));
app.use(myConnection(mysql, {
    host: 'localhost',
    user: 'root',
    password: 'contraseña',
    port: 3306,
    database: 'universidad'
}, 'single'));
app.use(express.urlencoded({extended: false}));


//routes

app.use('/', routes);

//starting server
app.listen(app.get('port'), () => {
    console.log('Servidor en puerto 3000');
});