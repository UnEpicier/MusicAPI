const express = require("express");
const router = express.Router();
const mariadb = require("mariadb");
const dotenv = require("dotenv");

dotenv.config();

const pool = mariadb.createPool({
	host: process.env.MYSQL_HOST,
	user: process.env.MYSQL_USER,
	password: process.env.MYSQL_PASS,
	database: process.env.MYSQL_DB,
	charset: "utf8mb4",
});

if (process.env.URL.endsWith("/")) {
	process.env.URL = process.env.URL.slice(0, -1);
}

router.get("/api/artists/:token", async (req, res) => {
	let result = [];
	await pool.getConnection().then(async (conn) => {
		await conn
			.query("SELECT COUNT(*) AS count FROM user WHERE token = ?", [
				req.params.token,
			])
			.then(async (rows) => {
				if (rows[0].count == 0) {
					return res.status(401).json({ error: "Invalid token" });
				}
				await conn
					.query("SELECT * FROM `group`")
					.then((rows) => {
						for (let i = 0; i < rows.length; i++) {
							result.push({
								id: rows[i].id,
								image: `${process.env.URL}${rows[i].image}`,
								name: rows[i].name,
								creationDate: parseInt(rows[i].creation_date),
								firstAlbum: rows[i].first_album,
							});
						}
					})
					.then(async () => {
						for (let i = 0; i < result.length; i++) {
							await conn
								.query(
									"SELECT * FROM `member` WHERE group_id = ?",
									[parseInt(result[i].id)]
								)
								.then((rows) => {
									result[i].members = [];
									for (let j = 0; j < rows.length; j++) {
										result[i].members.push(
											rows[j].member_name
										);
									}
								});
						}
					})
					.then(() => {
						return res.json(result);
					});
			});
	});
});

module.exports = router;
