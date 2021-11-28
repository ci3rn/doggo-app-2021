module.exports = (app) => {
  const doggos = require("../controllers/doggo.controller.js");
  var router = require("express").Router();

  // Create a new doggo
  router.post("/", doggos.create);

  // Remove doggo
  router.delete('/:id', doggos.delete);

  // Retrieve all doggos
  router.get("/", doggos.findAll);

  app.use('/api/doggos', router);
};
