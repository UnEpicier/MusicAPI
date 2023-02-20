const dotenv = require("dotenv");
const mariadb = require("mariadb");
const fs = require("fs");

dotenv.config();

const pool = mariadb.createPool({
	host: process.env.MYSQL_HOST,
	user: process.env.MYSQL_USER,
	password: process.env.MYSQL_PASS,
	database: process.env.MYSQL_DB,
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
