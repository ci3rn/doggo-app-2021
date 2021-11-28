const Doggo = require("../models/doggo.model.js");

// Create and Save a new Doggo
exports.create = (req, res) => {
  
};

// Retrieve all Doggos from the database.
exports.findAll = (req, res) => {
  Doggo.getAll((err, data) => {
      if(err) {
          res.status(500).send({
            message:
              err.message || "Some error occurred while retrieving doggos."
          });
      }
      else res.send(data);
  })
};