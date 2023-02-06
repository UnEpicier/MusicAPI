const express = require("express");
const fs = require("fs");

// Routes
const router = require("./router");

const app = express();
const port = 3000;

app.use(router);

app.listen(port, () => {
	console.log(`\x1b[1m\x1b[32mAPI started on port ${port}\x1b[0m`);
});
