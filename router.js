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

// Creation Date
// firstAlbum : param can be full date, month, year or day
// members: param can be full name (space = %20), first name or last name

module.exports = router;
