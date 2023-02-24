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

router.get("/api/artists/id/:id/:token", async (req, res) => {
	let result = [];

	if (req.params.id.match(/^[0-9]+$/) == null) {
		return res.status(400).json({ error: "Invalid ID" });
	}

	await pool.getConnection().then((conn) => {
		conn.query("SELECT COUNT(*) AS count FROM user WHERE token = ?", [
			req.params.token,
		]).then((rows) => {
			if (rows[0].count == 0) {
				return res.status(401).json({ error: "Invalid token" });
			}

			conn.query("SELECT * FROM `group` WHERE id = ?", [
				parseInt(req.params.id),
			])
				.then((rows) => {
					for (let i = 0; i < rows.length; i++) {
						result.push({
							id: rows[i].id,
							image: rows[i].image,
							name: rows[i].name,
							creationDate: parseInt(rows[i].creation_date),
							firstAlbum: rows[i].first_album,
						});
					}
				})
				.then(() => {
					conn.query("SELECT * FROM `member` WHERE group_id = ?", [
						parseInt(req.params.id),
					]).then((rows) => {
						result[0].members = [];
						for (let j = 0; j < rows.length; j++) {
							result[0].members.push(rows[j].member_name);
						}

						return res.json(result);
					});
				});
		});
	});
});

module.exports = router;
