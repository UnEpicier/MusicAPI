const fs = require("fs");
const download = require("image-downloader");

fetch("https://groupietrackers.herokuapp.com/api/artists")
	.then((response) => {
		return response.json();
	})
	.then((data) => {
		data.forEach((element) => {
			delete element.locations;
			delete element.concertDates;
			delete element.relations;

			const options = {
				url: element.image,
				dest: `${process.cwd()}/images/${element.id}.jpeg`,
			};

			download.image(options).then(() => {
				console.log(`Downloaded ${element.name} image`);
			});
		});

		fs.writeFileSync("data.json", JSON.stringify(data), "utf-8");
	})
	.then(() => {
		const data = JSON.parse(fs.readFileSync("data.json", "utf-8"));
		data.forEach((element) => {
			element.image = `/images/${element.id}.jpeg`;
		});

		fs.writeFileSync("data.json", JSON.stringify(data), "utf-8");
	})
	.catch((err) => {
		console.error(err);
		return;
	});
