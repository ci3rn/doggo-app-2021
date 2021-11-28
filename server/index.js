const express = require('express')
const cors = require('cors');
const app = express();
const appPort = 3000;
const serverPort = 5000;

app.use(cors({origin: `http://localhost:${appPort}`}));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

require("./routes/doggo.routes.js")(app);

app.listen(serverPort, () => {
  console.log(`Example app listening at http://localhost:${serverPort}`)
});