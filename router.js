const express = require("express");
const router = express.Router();
const mariadb = require("mariadb");
const dotenv = require("dotenv");
const { uuid } = require("uuidv4");
const fs = require("fs");

dotenv.config();

const pool = mariadb.createPool({
	host: process.env.MYSQL_HOST,
	user: process.env.MYSQL_USER,
	password: process.env.MYSQL_PASS,
	database: process.env.MYSQL_DB,
});

router.get("/api/artists/id/:id", (req, res) => {
	const results = [];

	return res.json(results);
});

router.get("/api/artists/name/:name", (req, res) => {
	const results = [];

	return res.json(results);
});

router.get("/api/artists/creation/:date", (req, res) => {
	const results = [];

	return res.json(results);
});

router.get("/api/artists/members/:name", (req, res) => {
	const results = [];

	return res.json(results);
});

module.exports = router;
