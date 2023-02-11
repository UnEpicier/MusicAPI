CREATE DATABASE IF NOT EXISTS groupie CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE groupie;

CREATE TABLE IF NOT EXISTS group (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    image VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    creation_date VARCHAR(255) NOT NULL,
    first_album VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS member (
    group_id INTEGER NOT NULL,
    member_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (group_id) REFERENCES group(id)
);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/1.jpeg", "Queen", "1970", "14-12-1973");
INSERT INTO member (group_id, member_name) VALUES (1, `Freddie Mercury`);
INSERT INTO member (group_id, member_name) VALUES (1, `Brian May`);
INSERT INTO member (group_id, member_name) VALUES (1, `John Daecon`);
INSERT INTO member (group_id, member_name) VALUES (1, `Roger Meddows-Taylor`);
INSERT INTO member (group_id, member_name) VALUES (1, `Mike Grose`);
INSERT INTO member (group_id, member_name) VALUES (1, `Barry Mitchell`);
INSERT INTO member (group_id, member_name) VALUES (1, `Doug Fogie`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/2.jpeg", "SOJA", "1997", "05-06-2002");
INSERT INTO member (group_id, member_name) VALUES (2, `Jacob Hemphill`);
INSERT INTO member (group_id, member_name) VALUES (2, `Bob Jefferson`);
INSERT INTO member (group_id, member_name) VALUES (2, `Ryan "Byrd" Berty`);
INSERT INTO member (group_id, member_name) VALUES (2, `Ken Brownell`);
INSERT INTO member (group_id, member_name) VALUES (2, `Patrick O'Shea`);
INSERT INTO member (group_id, member_name) VALUES (2, `Hellman Escorcia`);
INSERT INTO member (group_id, member_name) VALUES (2, `Rafael Rodriguez`);
INSERT INTO member (group_id, member_name) VALUES (2, `Trevor Young`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/3.jpeg", "Pink Floyd", "1965", "05-08-1967");
INSERT INTO member (group_id, member_name) VALUES (3, `David Gilmour`);
INSERT INTO member (group_id, member_name) VALUES (3, `Syd Barrett`);
INSERT INTO member (group_id, member_name) VALUES (3, `Roger Waters`);
INSERT INTO member (group_id, member_name) VALUES (3, `Richard Wright`);
INSERT INTO member (group_id, member_name) VALUES (3, `Nick Manson`);
INSERT INTO member (group_id, member_name) VALUES (3, `Bob Klose`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/4.jpeg", "Scorpions", "1965", "21-04-1979");
INSERT INTO member (group_id, member_name) VALUES (4, `Klaus Meine`);
INSERT INTO member (group_id, member_name) VALUES (4, `Rudolf Schenker`);
INSERT INTO member (group_id, member_name) VALUES (4, `Matthias Jabs`);
INSERT INTO member (group_id, member_name) VALUES (4, `Pawel Maciwoda`);
INSERT INTO member (group_id, member_name) VALUES (4, `Mikkey Dee`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/5.jpeg", "XXXTentacion", "2013", "07-09-2017");
INSERT INTO member (group_id, member_name) VALUES (5, `Jahseh Dwayne Ricardo Onfroy`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/6.jpeg", "Mac Miller", "2007", "29-06-2013");
INSERT INTO member (group_id, member_name) VALUES (6, `Malcolm James McCormick`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/7.jpeg", "Joyner Lucas", "2007", "13-05-2011");
INSERT INTO member (group_id, member_name) VALUES (7, `Gary Maurice Lucas Jr.`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/8.jpeg", "Kendrick Lamar", "2004", "03-11-2012");
INSERT INTO member (group_id, member_name) VALUES (8, `Kendrick Lamar Duckworth`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/9.jpeg", "ACDC", "1973", "11-05-1977");
INSERT INTO member (group_id, member_name) VALUES (9, `Angus Young`);
INSERT INTO member (group_id, member_name) VALUES (9, `Chris Slade`);
INSERT INTO member (group_id, member_name) VALUES (9, `Stevie Young`);
INSERT INTO member (group_id, member_name) VALUES (9, `Axl Rose`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/10.jpeg", "Pearl Jam", "1990", "03-07-1992");
INSERT INTO member (group_id, member_name) VALUES (10, `Eddie Vedder`);
INSERT INTO member (group_id, member_name) VALUES (10, `Mike McCready`);
INSERT INTO member (group_id, member_name) VALUES (10, `Stone Gossard`);
INSERT INTO member (group_id, member_name) VALUES (10, `Jeff Ament`);
INSERT INTO member (group_id, member_name) VALUES (10, `Matt Cameron`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/11.jpeg", "Katy Perry", "2001", "04-10-2008");
INSERT INTO member (group_id, member_name) VALUES (11, `Katheryn Elizabeth Hudson`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/12.jpeg", "Rihanna", "2003", "10-09-2005");
INSERT INTO member (group_id, member_name) VALUES (12, `Robyn Rihanna Fenty`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/13.jpeg", "Genesis", "1967", "14-10-1972");
INSERT INTO member (group_id, member_name) VALUES (13, `Mike Rutherford`);
INSERT INTO member (group_id, member_name) VALUES (13, `Tony Banks`);
INSERT INTO member (group_id, member_name) VALUES (13, `Phil Collins`);
INSERT INTO member (group_id, member_name) VALUES (13, `Chester Thompson`);
INSERT INTO member (group_id, member_name) VALUES (13, `Daryl Stuermer`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/14.jpeg", "Phil Collins", "1966", "21-02-1981");
INSERT INTO member (group_id, member_name) VALUES (14, `Phil Collins`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/15.jpeg", "Led Zeppelin", "1968", "12-04-1969");
INSERT INTO member (group_id, member_name) VALUES (15, `Jimmy Page`);
INSERT INTO member (group_id, member_name) VALUES (15, `John Paul Jones`);
INSERT INTO member (group_id, member_name) VALUES (15, `Robert Plant`);
INSERT INTO member (group_id, member_name) VALUES (15, `John Bonham`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/16.jpeg", "The Jimi Hendrix Experience", "1966", "27-05-1967");
INSERT INTO member (group_id, member_name) VALUES (16, `Jimi Hendrix`);
INSERT INTO member (group_id, member_name) VALUES (16, `Mitch Mitchell`);
INSERT INTO member (group_id, member_name) VALUES (16, `Noel Redding`);
INSERT INTO member (group_id, member_name) VALUES (16, `Billy Cox`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/17.jpeg", "Bee Gees", "1958", "12-08-1967");
INSERT INTO member (group_id, member_name) VALUES (17, `Barry Gib`);
INSERT INTO member (group_id, member_name) VALUES (17, `Robin Gibb`);
INSERT INTO member (group_id, member_name) VALUES (17, `Maurice Gibb`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/18.jpeg", "Deep Purple", "1968", "24-01-1970");
INSERT INTO member (group_id, member_name) VALUES (18, `Ian Paice`);
INSERT INTO member (group_id, member_name) VALUES (18, `Ian Gillan`);
INSERT INTO member (group_id, member_name) VALUES (18, `Roger Glover`);
INSERT INTO member (group_id, member_name) VALUES (18, `Steve Morse`);
INSERT INTO member (group_id, member_name) VALUES (18, `Don Airey`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/19.jpeg", "Aerosmith", "1970", "05-09-1987");
INSERT INTO member (group_id, member_name) VALUES (19, `Steven Tyler`);
INSERT INTO member (group_id, member_name) VALUES (19, `Tom Hamilton`);
INSERT INTO member (group_id, member_name) VALUES (19, `Joey Kramer`);
INSERT INTO member (group_id, member_name) VALUES (19, `Joe Perry`);
INSERT INTO member (group_id, member_name) VALUES (19, `Brad Whitford`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/20.jpeg", "Dire Straits", "1977", "22-07-1978");
INSERT INTO member (group_id, member_name) VALUES (20, `Mark Knopfler`);
INSERT INTO member (group_id, member_name) VALUES (20, `David Knopfler`);
INSERT INTO member (group_id, member_name) VALUES (20, `John Illsley`);
INSERT INTO member (group_id, member_name) VALUES (20, `Pick Withers`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/21.jpeg", "Mamonas Assassinas", "1995", "23-06-1995");
INSERT INTO member (group_id, member_name) VALUES (21, `Dinho`);
INSERT INTO member (group_id, member_name) VALUES (21, `Bento Hinoto`);
INSERT INTO member (group_id, member_name) VALUES (21, `Júlio Rasec`);
INSERT INTO member (group_id, member_name) VALUES (21, `Sérgio Reoli`);
INSERT INTO member (group_id, member_name) VALUES (21, `Samuel Reis de Oliveira`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/22.jpeg", "Thirty Seconds to Mars", "1998", "27-06-2002");
INSERT INTO member (group_id, member_name) VALUES (22, `Jared Leto`);
INSERT INTO member (group_id, member_name) VALUES (22, `Shannon Leto`);
INSERT INTO member (group_id, member_name) VALUES (22, `Tomo Miličević`);
INSERT INTO member (group_id, member_name) VALUES (22, `Matt Wachter`);
INSERT INTO member (group_id, member_name) VALUES (22, `Solon Bixler`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/23.jpeg", "Imagine Dragons", "2008", "04-09-2012");
INSERT INTO member (group_id, member_name) VALUES (23, `Dan Reynolds`);
INSERT INTO member (group_id, member_name) VALUES (23, `Daniel Wayne Sermon`);
INSERT INTO member (group_id, member_name) VALUES (23, `Ben McKee`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/24.jpeg", "Juice Wrld", "2015", "23-05-2018");
INSERT INTO member (group_id, member_name) VALUES (24, ` Jarad Higgins`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/25.jpeg", "Logic", "2009", "22-09-2015");
INSERT INTO member (group_id, member_name) VALUES (25, `Sir Robert Bryson Hall II`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/26.jpeg", "Alec Benjamin", "2013", "15-11-2018");
INSERT INTO member (group_id, member_name) VALUES (26, `Alec Benjamin`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/27.jpeg", "Bobby McFerrins", "1977", "01-09-1982");
INSERT INTO member (group_id, member_name) VALUES (27, `Bobby McFerrin`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/28.jpeg", "R3HAB", "2008", "09-12-2014");
INSERT INTO member (group_id, member_name) VALUES (28, `Fadil El Ghoul`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/29.jpeg", "Post Malone", "2013", "13-05-2016");
INSERT INTO member (group_id, member_name) VALUES (29, `Post Malone`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/30.jpeg", "Travis Scott", "2008", "18-08-2014");
INSERT INTO member (group_id, member_name) VALUES (30, `Jacques Bermon Webster II`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/31.jpeg", "J. Cole", "2007", "04-05-2007");
INSERT INTO member (group_id, member_name) VALUES (31, `Jermaine Lamarr Cole`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/32.jpeg", "Nickelback", "1995", "04-09-1996");
INSERT INTO member (group_id, member_name) VALUES (32, `Chad Kroeger`);
INSERT INTO member (group_id, member_name) VALUES (32, `Ryan Peake`);
INSERT INTO member (group_id, member_name) VALUES (32, `Mike Kroeger`);
INSERT INTO member (group_id, member_name) VALUES (32, `Daniel Adair`);
INSERT INTO member (group_id, member_name) VALUES (32, `Brandon Kroeger`);
INSERT INTO member (group_id, member_name) VALUES (32, `Ryan Vikedal`);
INSERT INTO member (group_id, member_name) VALUES (32, `Mitch Guindon`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/33.jpeg", "Mobb Deep", "1991", "23-04-1993");
INSERT INTO member (group_id, member_name) VALUES (33, `Prodigy`);
INSERT INTO member (group_id, member_name) VALUES (33, `Havoc`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/34.jpeg", "Guns N' Roses", "1985", "21-07-1987");
INSERT INTO member (group_id, member_name) VALUES (34, `Axl Rose`);
INSERT INTO member (group_id, member_name) VALUES (34, `Duff McKagan`);
INSERT INTO member (group_id, member_name) VALUES (34, `Slash`);
INSERT INTO member (group_id, member_name) VALUES (34, `Dizzy Reed`);
INSERT INTO member (group_id, member_name) VALUES (34, `Richard Fortus`);
INSERT INTO member (group_id, member_name) VALUES (34, `Frank Ferrer`);
INSERT INTO member (group_id, member_name) VALUES (34, `Melissa Reese`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/35.jpeg", "NWA", "1998", "03-11-1998");
INSERT INTO member (group_id, member_name) VALUES (35, `Ice Cube`);
INSERT INTO member (group_id, member_name) VALUES (35, `Eazy-E`);
INSERT INTO member (group_id, member_name) VALUES (35, `Dr. Dre`);
INSERT INTO member (group_id, member_name) VALUES (35, `MC Ren`);
INSERT INTO member (group_id, member_name) VALUES (35, `DJ Yella`);
INSERT INTO member (group_id, member_name) VALUES (35, `The D.O.C.`);
INSERT INTO member (group_id, member_name) VALUES (35, `Arabian Prince`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/36.jpeg", "U2", "1976", "06-12-1980");
INSERT INTO member (group_id, member_name) VALUES (36, `Bono`);
INSERT INTO member (group_id, member_name) VALUES (36, `The Edge`);
INSERT INTO member (group_id, member_name) VALUES (36, `Adam Clayton`);
INSERT INTO member (group_id, member_name) VALUES (36, `Larry Mullen Jr.`);
INSERT INTO member (group_id, member_name) VALUES (36, `Ivan McCormick`);
INSERT INTO member (group_id, member_name) VALUES (36, `Peter Martin`);
INSERT INTO member (group_id, member_name) VALUES (36, `Dick Evans`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/37.jpeg", "Arctic Monkeys", "2002", "23-04-2007");
INSERT INTO member (group_id, member_name) VALUES (37, `Alex Turner`);
INSERT INTO member (group_id, member_name) VALUES (37, `Matt Helders`);
INSERT INTO member (group_id, member_name) VALUES (37, `Jamie Cook`);
INSERT INTO member (group_id, member_name) VALUES (37, `Nick O'Malley`);
INSERT INTO member (group_id, member_name) VALUES (37, `Andy Nicholson`);
INSERT INTO member (group_id, member_name) VALUES (37, `Glyn Jones`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/38.jpeg", "Fall Out Boy", "2001", "25-03-2003");
INSERT INTO member (group_id, member_name) VALUES (38, `Pete Wentz`);
INSERT INTO member (group_id, member_name) VALUES (38, `Patrick Stump`);
INSERT INTO member (group_id, member_name) VALUES (38, `Andy Hurley`);
INSERT INTO member (group_id, member_name) VALUES (38, `Joe Trohman`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/39.jpeg", "Gorillaz", "1998", "26-03-2001");
INSERT INTO member (group_id, member_name) VALUES (39, `Damon Albarn`);
INSERT INTO member (group_id, member_name) VALUES (39, `Jamie Hewlett`);
INSERT INTO member (group_id, member_name) VALUES (39, `Remi Kabaka Jr.`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/40.jpeg", "Eagles", "1971", "01-06-1972");
INSERT INTO member (group_id, member_name) VALUES (40, `Glenn Frey`);
INSERT INTO member (group_id, member_name) VALUES (40, `Don Henley`);
INSERT INTO member (group_id, member_name) VALUES (40, `Randy Meisner`);
INSERT INTO member (group_id, member_name) VALUES (40, `Bernie Leadon`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/41.jpeg", "Linkin Park", "1996", "27-01-2001");
INSERT INTO member (group_id, member_name) VALUES (41, `Chester Bennington`);
INSERT INTO member (group_id, member_name) VALUES (41, `Mike Shinoda`);
INSERT INTO member (group_id, member_name) VALUES (41, `Brad Delson`);
INSERT INTO member (group_id, member_name) VALUES (41, `Dave Farrell`);
INSERT INTO member (group_id, member_name) VALUES (41, `Joe Hahn`);
INSERT INTO member (group_id, member_name) VALUES (41, `Rob Bourdon`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/42.jpeg", "Red Hot Chili Peppers", "1983", "10-02-1990");
INSERT INTO member (group_id, member_name) VALUES (42, `Anthony Kiedis`);
INSERT INTO member (group_id, member_name) VALUES (42, `Flea`);
INSERT INTO member (group_id, member_name) VALUES (42, `Chad Smith`);
INSERT INTO member (group_id, member_name) VALUES (42, `Josh Klinghoffer`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/43.jpeg", "Eminem", "1996", "10-04-1999");
INSERT INTO member (group_id, member_name) VALUES (43, `Marshall Bruce Mathers`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/44.jpeg", "Green Day", "1986", "18-06-1994");
INSERT INTO member (group_id, member_name) VALUES (44, `Billie Joe Armstrong`);
INSERT INTO member (group_id, member_name) VALUES (44, `Mike Dirnt`);
INSERT INTO member (group_id, member_name) VALUES (44, `Tré Cool`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/45.jpeg", "Metallica", "1981", "22-08-1987");
INSERT INTO member (group_id, member_name) VALUES (45, `James Hetfield`);
INSERT INTO member (group_id, member_name) VALUES (45, `Lars Ulrich`);
INSERT INTO member (group_id, member_name) VALUES (45, `Kirk Hammett`);
INSERT INTO member (group_id, member_name) VALUES (45, `Robert Trujillo`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/46.jpeg", "Coldplay", "1996", "22-07-2000");
INSERT INTO member (group_id, member_name) VALUES (46, `Chris Martin`);
INSERT INTO member (group_id, member_name) VALUES (46, `Guy Berryman`);
INSERT INTO member (group_id, member_name) VALUES (46, `Jonny Buckland`);
INSERT INTO member (group_id, member_name) VALUES (46, `Will Champion`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/47.jpeg", "Maroon 5", "1994", "31-01-2004");
INSERT INTO member (group_id, member_name) VALUES (47, `Adam Levine`);
INSERT INTO member (group_id, member_name) VALUES (47, `Jesse Carmichael`);
INSERT INTO member (group_id, member_name) VALUES (47, `Mickey Madden`);
INSERT INTO member (group_id, member_name) VALUES (47, `James Valentine`);
INSERT INTO member (group_id, member_name) VALUES (47, `Matt Flynn`);
INSERT INTO member (group_id, member_name) VALUES (47, `PJ Morton`);
INSERT INTO member (group_id, member_name) VALUES (47, `Sam Farrar`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/48.jpeg", "Twenty One Pilots", "2009", "14-09-2013");
INSERT INTO member (group_id, member_name) VALUES (48, `Tyler Joseph`);
INSERT INTO member (group_id, member_name) VALUES (48, `Josh Dun`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/49.jpeg", "The Rolling Stones", "1962", "31-07-1963");
INSERT INTO member (group_id, member_name) VALUES (49, `Mick Jagger `);
INSERT INTO member (group_id, member_name) VALUES (49, `Keith Richards`);
INSERT INTO member (group_id, member_name) VALUES (49, `Charlie Watts`);
INSERT INTO member (group_id, member_name) VALUES (49, `Ron Wood`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/50.jpeg", "Muse", "1994", "26-06-1999");
INSERT INTO member (group_id, member_name) VALUES (50, `Matthew Bellamy`);
INSERT INTO member (group_id, member_name) VALUES (50, `Christopher Wolstenholme`);
INSERT INTO member (group_id, member_name) VALUES (50, `Dominic Howard `);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/51.jpeg", "Foo Fighters", "1994", "01-07-1995");
INSERT INTO member (group_id, member_name) VALUES (51, `Dave Grohl`);
INSERT INTO member (group_id, member_name) VALUES (51, `Nate Mendel`);
INSERT INTO member (group_id, member_name) VALUES (51, `Taylor Hawkins`);
INSERT INTO member (group_id, member_name) VALUES (51, `Chris Shiflett`);
INSERT INTO member (group_id, member_name) VALUES (51, `Pat Smear`);
INSERT INTO member (group_id, member_name) VALUES (51, `Rami Jaffee`);

INSERT INTO group (image, name, creation_date, first_album) VALUES ("/images/52.jpeg", "The Chainsmokers", "2008", "15-03-2014");
INSERT INTO member (group_id, member_name) VALUES (52, `Alexander Pall`);
INSERT INTO member (group_id, member_name) VALUES (52, `Andrew Taggart`);
INSERT INTO member (group_id, member_name) VALUES (52, `Matt McGuire`);
INSERT INTO member (group_id, member_name) VALUES (52, `Tony Ann`);

