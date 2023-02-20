const express = require("express");

// Routes
const all = require("./router/all");
const id = require("./router/id");
const name = require("./router/name");
const creation = require("./router/creation");
const member = require("./router/member");

const app = express();
const port = 3000;

app.use(express.static(`${process.cwd()}/assets/`));

app.use(all);
app.use(id);
app.use(name);
app.use(creation);
app.use(member);

app.listen(port, () => {
	console.log(`\x1b[1m\x1b[32mAPI started on port ${port}\x1b[0m`);
});
