INSERT INTO ARTISTS_TRACKS (id_track, id_artist)
VALUES (1,1),
        (1,2);

INSERT INTO TRACKS_GENRES (id_track, id_genre)
VALUES (1,1),
        (1,2),
		(1,3);

INSERT INTO RELEASES_TRACKS (id_track, id_release)
VALUES (1,1);

INSERT INTO RELEASES_ARTISTS (id_release, id_artist)
VALUES (1,1),
        (1,2);

INSERT INTO PRODUCERS_TRACKS (id_producer, id_track)
VALUES (1,1);

INSERT INTO COMPOSERS_TRACKS (id_composer, id_track)
VALUES (1,1);

INSERT INTO RELEASES_LABELS (id_label, id_release)
VALUES (1,1);

INSERT INTO ARTISTS_TRACKS (id_track, id_artist)
VALUES
(2,3),
(2,4),
(3,5),
(3,6),
(3,7),
(4,8),
(5,8),
(6,7),
(6,9),
(7,10),
(7,11),
(8,10),
(8,11),
(9,10),
(9,11),
(10,10),
(10,11),
(10,12),
(11,10),
(11,11),
(12,10),
(12,11),
(13,10),
(13,11);

INSERT INTO TRACKS_GENRES (id_track, id_genre)
VALUES
(2,1),
(2,3),
(3,1),
(4,4),
(4,5),
(5,6),
(6,1),
(7,1),
(7,2),
(8,1),
(8,2),
(9,1),
(9,2),
(10,1),
(10,2),
(10,3),
(11,1),
(11,2),
(12,1),
(12,2),
(13,1),
(13,2);

INSERT INTO RELEASES_TRACKS (id_track, id_release)
VALUES
(2,2),
(3,3),
(4,4),
(5,4),
(6,5),
(7,6),
(8,6),
(9,6),
(10,6),
(11,6),
(12,6),	
(13,6);

INSERT INTO RELEASES_ARTISTS (id_release, id_artist)
VALUES
(2,3),
(2,4),
(3,5),
(3,6),
(3,7),
(4,8),
(5,7),
(5,9),
(6,10),
(6,11);

INSERT INTO PRODUCERS_TRACKS (id_producer, id_track)
VALUES
(2,2),
(3,3),
(4,4),
(4,5),
(5,6),
(6,7),
(6,8),
(6,9),
(6,10),
(6,11),
(6,12),
(6,13);

INSERT INTO COMPOSERS_TRACKS (id_composer, id_track)
VALUES
(2,2),
(3,2),
(4,3),
(5,3),
(6,3),
(7,4),
(7,5),
(6,6),
(8,6),
(9,7),
(10,7),
(9,8),
(10,8),
(9,9),
(10,9),
(9,10),
(10,10),
(11,10),
(9,11),
(10,11),
(9,12),
(10,12),
(9,13),
(10,13);

INSERT INTO RELEASES_LABELS (id_label, id_release)
VALUES
(2,2),
(3,3),
(4,4),
(4,6),
(5,6);