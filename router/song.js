const express = require("express");

const router = express.Router();

router.get("/song/:name", (req, res) => {
	res.json(req.params);
});

module.exports = router;
