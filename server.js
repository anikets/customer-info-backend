const express = require("express");
const bodyParser = require("body-parser");
var morgan = require('morgan');
const Customer = require("./customer");

const app = express();
const port = 3004;  // todo read port from env variable for supporting different envs

app.use(bodyParser.json());
app.use(morgan('combined'));

app.use(bodyParser.urlencoded({ extended: true }));

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to customer backend application." });
});

require("./routes")(app);

// set port, listen for requests
app.listen(port, () => {
  console.info(`Server is running on port ${port}...`);
});
