const Doggo = require("../models/doggo.model.js");

// Create and Save a new Doggo
exports.create = (req, res) => {
  Doggo.create((err, data) => {
    if (err) {
      res.status(500).send({
        message: err.message || "Some error occured while inserting doggo.",
      });
    }
  });
};

exports.delete = (req, res) => {
  Doggo.remove(req.params.id, (err, data) => {
    console.log(req.params.id);
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found Doggo with id ${req.params.id}.`,
        });
      } else {
        res.status(500).send({
          message: "Could not delete Doggo with id " + req.params.id,
        });
      }
    } else res.send({
      id: req.params.id,
      message: `Doggo was deleted successfully!`
    });
  });
};

// Retrieve all Doggos from the database.
exports.findAll = (req, res) => {
  Doggo.getAll((err, data) => {
    if (err) {
      res.status(500).send({
        message: err.message || "Some error occurred while retrieving doggos.",
      });
    } else res.send(data);
  });
};