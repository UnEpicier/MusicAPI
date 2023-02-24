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

router.get("/api/artists/member/:name/:type/:token", async (req, res) => {
	let result = [];

	if (req.params.name.match(/^[a-zA-Z0-9_ ]*$/) == null) {
		return res.status(400).json({ error: "Invalid Query: name" });
	}

	await pool.getConnection().then(async (conn) => {
		await conn
			.query("SELECT COUNT(*) AS count FROM user WHERE token = ?", [
				req.params.token,
			])
			.then(async (rows) => {
				if (rows[0].count == 0) {
					return res.status(401).json({ error: "Invalid token" });
				}

				let formatted = "";
				if (req.params.type === "start") {
					formatted = `${req.params.name}%`;
				} else if (req.params.type === "end") {
					formatted = `%${req.params.name}`;
				} else if (req.params.type === "contain") {
					formatted = `%${req.params.name}%`;
				} else {
					return res
						.status(400)
						.json({ error: "Invalid Query: type" });
				}

				await conn
					.query(
						"SELECT DISTINCT group_id FROM `member` WHERE member_name LIKE ?",
						[`%${req.params.name}%`]
					)
					.then(async (rows) => {
						for (let i = 0; i < rows.length; i++) {
							result.push({
								id: rows[i].group_id,
							});

							await conn
								.query("SELECT * FROM `group` WHERE id = ?", [
									rows[i].group_id,
								])
								.then((rows) => {
									result[i].image = rows[0].image;
									result[i].name = rows[0].name;
									result[i].creationDate = parseInt(
										rows[0].creation_date
									);
									result[i].firstAlbum = rows[0].first_album;
								});
						}
					})
					.then(async () => {
						let i = 0;
						while (i < result.length - 1) {
							await conn
								.query(
									"SELECT * FROM `member` WHERE group_id = ?",
									[result[i].id]
								)
								.then((rows) => {
									result[i].members = [];
									for (let j = 0; j < rows.length; j++) {
										result[i].members.push(
											rows[j].member_name
										);
									}
								});

							i++;
						}

						if (i == result.length - 1) {
							return res.json(result);
						}
					});
			});
	});
});

module.exports = router;
