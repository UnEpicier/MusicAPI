# Music API

This is a simple API for music. It is a school project.

## Installation

1. Clone the repository
2. Run `npm install`
3. Copy `.env.example` to `.env` and fill in the values
4. Run `npm start`

## Usage

The API is available at `http://localhost:{PORT}`.

## Endpoints

-   `GET /api/artists/:token` - Get all artists
-   `GET /api/artists/id/:id/:token` - Get an artist by ID
-   `GET /api/artists/name/:name/token` - Get an artist by ID
-   `GET /api/artists/creation/:date/:token` - Get an artist by ID
-   `GET /api/artists/member/:name/:type/:token` - Get an artist by ID
