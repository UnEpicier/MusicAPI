const express = require("express");
const router = express.Router();
const fs = require("fs");

router.get("/api/artists", (_, res) => {
	return res.json(JSON.parse(fs.readFileSync("data.json", "utf-8")));
});

router.get("/api/artists/id/:id", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));

	const artist = artists.find(
		(artist) => artist.id === parseInt(req.params.id)
	);
	if (!artist) {
		return res.status(404).json({ error: "Artist not found" });
	}
	return res.json(artist);
});

router.get("/api/artists/name/:name", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));

	const artist = artists.find(
		(artist) => artist.name.toLowerCase() === req.params.name.toLowerCase()
	);
	if (!artist) {
		return res.status(404).json({ error: "Artist not found" });
	}
	return res.json(artist);
});

router.get("/api/artists/creation/:date", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));

	const artist = artists.find(
		(artist) => artist.creationDate === parseInt(req.params.date)
	);
	if (!artist) {
		return res.status(404).json({ error: "Artist not found" });
	}
	return res.json(artist);
});

router.get("/api/artists/members/:name", (req, res) => {
	const artists = JSON.parse(fs.readFileSync("data.json", "utf-8"));
	const result = [];

	for (let i = 0; i < artists.length; i++) {
		for (let j = 0; j < artists[i].members.length; j++) {
			if (
				artists[i].members[j].includes(
					req.params.name.replace("%20", " ")
				)
			) {
				result.push(artists[i]);
				found = true;
				break;
			}
		}
	}
	return res.json(result);
});

module.exports = router;
