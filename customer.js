const sql = require("./index");

// constructor
const Customer = function(customer) {
  this.name = customer.name;
  this.createdAt = customer.createdAt;
};

Customer.getAll = result => {
  sql.query("SELECT * FROM Customer", (err, res) => {
    if (err) {
      result(null, err);
      return;
    }
    result(null, res);
  });
};

Customer.findById = (customerId, result) => {
  sql.query(`SELECT * FROM customerAddress WHERE customerId = ${customerId}`, (err, res) => {
    if (err) {
      console.error("findById error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.info("findById success: ", res);
      result(null, res);
      return;
    }

    // not found Customer with the id
    result({ kind: "not_found" }, null);
  });
};

module.exports = Customer;
