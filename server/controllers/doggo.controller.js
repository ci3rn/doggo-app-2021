const Doggo = require("../models/doggo.model.js");

// Create and Save a new Doggo
exports.create = (req, res) => {
  const doggo = new Doggo({
    id : req.body.id,
    name : req.body.name,
    image_url : req.body.image_url,
    breed_group : req.body.breed_group,
    country_code : req.body.country_code,
    height : req.body.height,
    weight : req.body.weight,
    life_span : req.body.life_span,
    temperament : req.body.temperament
  });
  Doggo.create(doggo, (err, data) => {
    if (err) {
      res.status(500).send({
        message: err.message || "Some error occured while inserting doggo.",
      });
    };
    res.send(doggo);
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