Developed on:
* Node.js v14.6.0
* mysql  Ver 14.14 Distrib 5.7.27

Create database by running following command in MySQL CLI:
`create database customer;`

Check if correct MySQL credentials are present in db.config.js.

Restore database dumps by using files in seed folder at project root:
* `mysql -u<username> -p<password> customer < seed/customers.sql`
* `mysql -u<username> -p<password> customer < seed/addresses.sql`

Run following commands to start backend:
* `npm install`
* `npm start`
