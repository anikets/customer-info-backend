Developed on:
* Node.js v14.6.0
* mysql  Ver 14.14 Distrib 5.7.27

Create database by running following command in MySQL CLI:
`create database customer;`

Check if correct MySQL credentials are present in db.config.js.

Restore database dumps:
* `mysql -u<username> -p<password> customer < customers.sql`
* `mysql -u<username> -p<password> customer < addresses.sql`

Run following commands to start backend:
* `npm install`
* `npm start`
