const express = require("express");
const router = express.Router();
const fs = require("fs");

router.get("/api/artists", (_, res) => {
	return res.json(JSON.parse(fs.readFileSync("data.json", "utf-8")));
});

router.get("/api/artists/id/:id", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));

	const results = [];

	for (let i = 0; i < artists.length; i++) {
		if (artists[i].id === parseInt(req.params.id)) {
			results.push(artists[i]);
		}
	}

	return res.json(results);
});

router.get("/api/artists/name/:name", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));

	const results = [];

	for (let i = 0; i < artists.length; i++) {
		if (artists[i].name.toLowerCase().includes(req.params.name)) {
			results.push(artists[i]);
		}
	}

	return res.json(results);
});

router.get("/api/artists/creation/:date", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));

	const results = [];

	for (let i = 0; i < artists.length; i++) {
		if (artists[i].creationDate === parseInt(req.params.date)) {
			results.push(artists[i]);
		}
	}

	return res.json(results);
});

router.get("/api/artists/members/:name", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));
	const results = [];

	for (let i = 0; i < artists.length; i++) {
		for (let j = 0; j < artists[i].members.length; j++) {
			if (
				artists[i].members[j].includes(
					req.params.name.replace("%20", " ")
				)
			) {
				results.push(artists[i]);
				found = true;
				break;
			}
		}
	}
	return res.json(results);
});

module.exports = router;
