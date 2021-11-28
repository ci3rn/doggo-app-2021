const sql = require("./db.js");

const Doggo = function (doggo) {
  this.name = doggo.name;
  this.image_url = doggo.image_url;
  this.breed_group = doggo.breed_group;
  this.height = doggo.height;
  this.weight = doggo.weight;
  this.life_span = doggo.life_span;
  this.temperament = doggo.temperament;
};

Doggo.create = (doggo, result) => {
  sql.query("INSERT INTO doggos SET ?", doggo, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }
    console.log("created doggos: ", { id: res.id, ...doggo });
    result(null, { id: res.id, ...doggo });
  });
};

Doggo.remove = (id, result) => {
  sql.query("DELETE FROM doggos WHERE id = ?", id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found Doggos with the id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted doggo with id: ", id);
    result(null, res);
  });
};

Doggo.getAll = (result) => {
  sql.query("SELECT * FROM doggos", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("doggos: ", res);
    result(null, res);
  });
};

module.exports = Doggo;