const express = require("express");

// Routes
const song = require("./router/song");

const app = express();
const port = 3000;

app.use(song);

app.listen(port, () => {
	console.log(`\x1b[1m\x1b[32mAPI started on port ${port}\x1b[0m`);
});
