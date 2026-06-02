INSERT INTO COUNTRIES (country_name)
VALUES ('United States');


INSERT INTO ARTISTS (artist_name, artist_description, id_country)
VALUES ('Lucki', 'Artist based in Chicago.', 1),
       ('F1LTHY', 'Producer known for his raw beat production.', 1);

INSERT INTO TRACKS (track_name, version_name, bpm, streams, track_language, track_time_sec, isrc)
   VALUES ('NEPTUNE V.S INDUSTRY', 'Original Mix', 130, 15678542, 'English', 106, 'LU1234567890');

INSERT INTO GENRES (genre_name)
VALUES ('Rap'),
        ('Cloud Rap'),
		('Hip Hop');

INSERT INTO RELEASES (release_name, release_type, release_date, release_description, upc, id_country)
VALUES ('NEPTUNE V.S INDUSTRY', 'Single', '2019-11-19', 'Collaboration between LUCKI and F1LTHY', 'FY1234567890', 1);

INSERT INTO PRODUCERS (producer_name)
VALUES ('F1LTHY');

INSERT INTO COMPOSERS (composer_name)
VALUES ('Lucki');

INSERT INTO LABELS (label_name, label_description)
VALUES ('Empire','Label created by rapper and songwriter Lucki.');



INSERT INTO COUNTRIES (country_name)
VALUES ('Romania'),
       ('Sweden');

INSERT INTO ARTISTS (artist_name, artist_description, id_country)
VALUES ('Chief Keef', 'South Side Chicago rapper.', 1),
        ('ian', 'Songwriter and singer.',1),
		('Bfb Da Packman', 'Michigan artist.', 1),
		('Babyfxce E', 'Rapper known for his complex flows.', 1),
		('KrispyLife Kidd', 'KrispyLife.',1),
		('sar.casm', 'Young Romanian experimental artists, known for his diverse discography.',2),
		('Babytron', 'The legend himself, needs no introduction.', 1),
		('Bladee', 'Member of the music group Drain Gang.', 3),
		('Thaiboy Digital','Respected figure in the underground rap scene.', 3),
		('Ecco2k', 'An artist with an unique sound, often described and connected with frutiger aero.', 3);
		
INSERT INTO TRACKS (track_name, version_name, bpm, streams, track_language, track_time_sec, isrc)
VALUES ('Video Shoot','Original Mix', 130, 2857954,'English', 158,'CF1234567890'),
       ('Kentucky Love','Original Mix', 140, 29144569,'English', 231,'KE1234567890'),
	   ('fake scenarios','Original Mix', 172, 1034,'No language', 192,'FA1234567890'),
	   ('fake scenarios','Alternate Edit', 115, 986,'No language', 52,'FE1234567890'),
	   ('Karate Buddy','Original Mix', 135, 4376890,'English', 134,'KB1234567890'),
	   ('Still in Search of Sunshine','Original Mix', 115, 2376890,'English', 137,'SU1234567890'),
	   ('Painkillers','Original Mix', 120, 1324789,'English', 139,'PN1234567890'),
	   ('1million','Original Mix', 135, 1900567,'English', 156,'MI1234567890'),
	   ('Brokeboy','Original Mix', 120, 2316678,'English', 135,'BR1234567890'),
	   ('Area 51','Original Mix', 130, 1789006,'English', 187,'TU1234567890'),
	   ('2x','Original Mix', 120, 1678906,'English', 164,'WI1234567890'),
	   ('Winter','Original Mix', 132, 2000678,'English', 154,'WO1234567890');

INSERT INTO GENRES (genre_name)
VALUES ('Dnb'),
        ('Electronic'),
		('Lo-Fi');

INSERT INTO RELEASES (release_name, release_type, release_date, release_description, upc, id_country)
VALUES ('Video Shoot','Single','2026-03-13','Single for the upcoming album of Chief Keef.','IA1234567890',1),
        ('Kentucky Love','Single','2024-01-15','Collaboration.','LO1234567890',1),
		('fake scenarios','EP','2023-11-10','fake scenarios EP','SC1234567890',2),
		('Karate Buddy','Single','2021-09-11','Single for the upcoming album of KrispyLife Kidd.','BU1234567890',1),
		('AvP','Album','2016-12-09','Album made by Bladee and Thaiboy Digital.','MV1234567890',3),
		('Example','Upcoming Album', '2026-12-12', 'Album','QU1234567890',1);

INSERT INTO PRODUCERS (producer_name)
VALUES ('Quadwoofer'),
       ('Mook Made It'),
	   ('sar.casm'),
	   ('Enrgy Beats'),
	   ('Whitearmor');

INSERT INTO COMPOSERS (composer_name)
VALUES ('Chief Keef'),
       ('ian'),
	   ('Bfb Da Packman'),
	   ('Babyfxce E'),
	   ('KrispyLife Kidd'),
	   ('sar.casm'),
	   ('Babytron'),
	   ('Bladee'),
	   ('Thaiboy Digital'),
	   ('Ecco2k');

INSERT INTO LABELS (label_name, label_description)
VALUES ('43B', 'Label created by Chief Keef.'),
       ('The Lunch Crew Company', 'Label based in USA.'),
	   ('No label', 'Self released.'),
	   ('YEAR0001', 'Label based in Sweden cread by Oskar Okaman');

