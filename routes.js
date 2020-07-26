module.exports = app => {
  const customers = require("./controller");

  // Retrieve all Customers
  app.get("/api/v1/customers", customers.findAll);

  // Retrieve a single Customer with customerId
  app.get("/api/v1/customer/:customerId", customers.findOne);
};
