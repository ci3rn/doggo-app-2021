module.exports = (app) => {
  const doggos = require("../controllers/doggo.controller.js");
  var router = require("express").Router();

  // Create a new Doggo
  router.post("/", doggos.create);

  // Retrieve all Doggos
  router.get("/", doggos.findAll);

  // Delete a Doggo with id
  // router.delete("/:id", doggos.delete);

  app.use('/api/doggos', router);
};
