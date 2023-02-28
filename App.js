const express = require("express");
const dotenv = require("dotenv");

dotenv.config();

// Check if all env variables are set
const vars = [
	"PORT",
	"MYSQL_HOST",
	"MYSQL_USER",
	"MYSQL_PASS",
	"MYSQL_DB",
	"URL",
];

vars.forEach((v) => {
	if (!process.env[v] || process.env[v].length == 0) {
		console.log(`\x1b[1m\x1b[31mMissing env variable: ${v}\x1b[0m`);
		process.exit(1);
	}
});

// Routes
const all = require("./router/all");
const id = require("./router/id");
const name = require("./router/name");
const creation = require("./router/creation");
const member = require("./router/member");

const app = express();
const port = process.env.PORT ?? 3000;

app.use(express.static(`${process.cwd()}/assets/`));

app.use(all);
app.use(id);
app.use(name);
app.use(creation);
app.use(member);

app.listen(port, () => {
	console.log(`\x1b[1m\x1b[32mAPI started on port ${port}\x1b[0m`);
});
