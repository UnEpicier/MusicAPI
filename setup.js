const dotenv = require("dotenv");
const mariadb = require("mariadb");
const fs = require("fs");

dotenv.config();

// Check if all env variables are set
const vars = ["PORT", "MYSQL_HOST", "MYSQL_USER", "MYSQL_PASS", "MYSQL_DB"];

vars.forEach((v) => {
	if (!process.env[v] || process.env[v].length == 0) {
		console.log(`\x1b[1m\x1b[31mMissing env variable: ${v}\x1b[0m`);
		process.exit(1);
	}
});

const pool = mariadb.createPool({
	host: process.env.MYSQL_HOST,
	user: process.env.MYSQL_USER,
	password: process.env.MYSQL_PASS,
	database: process.env.MYSQL_DB,
	charset: "utf8mb4",
});

(async () => {
	let conn;
	try {
		conn = await pool.getConnection();

		const sqls = fs.readFileSync("setup.sql", "utf-8").split(";");

		for (let i = 0; i < sqls.length; i++) {
			const sql = sqls[i].trim();
			if (sql.length > 0) {
				await conn.query(sql);
			}
		}
		console.log("Database setup complete");
	} finally {
		if (conn) conn.release();
	}
	process.exit(0);
})();
