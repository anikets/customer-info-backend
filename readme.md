Login to MySQL from CLI and run following command:
`create database customer;`

Check if correct credentials are present in db.config.js.

Restore database dumps:
mysql -u<username> -p<password> customer < customers.sql
mysql -u<username> -p<password> customer < addresses.sql

Run following commands to start backend:
npm install
npm start
