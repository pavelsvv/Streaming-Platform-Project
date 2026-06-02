CREATE TABLE COUNTRIES (
id_country SERIAL primary key,
country_name varchar(80) NOT NULL
);

CREATE TABLE ARTISTS (
id_artist SERIAL primary key,
artist_name varchar(200) NOT NULL,
artist_description text,
id_country int,
FOREIGN KEY (id_country) REFERENCES COUNTRIES(id_country)
);

CREATE TABLE TRACKS (
id_track SERIAL primary key,
track_name varchar(250) NOT NULL,
version_name varchar(120),
bpm int,
streams int,
track_language varchar(50),
track_time_sec int NOT NULL,
isrc varchar(12) NOT NULL
);

CREATE TABLE ARTISTS_TRACKS (
id_track int REFERENCES TRACKS(id_track),
id_artist int REFERENCES ARTISTS(id_artist),
primary key (id_track, id_artist)
);

CREATE TABLE GENRES (
id_genre SERIAL primary key,
genre_name varchar(50) NOT NULL
);

CREATE TABLE TRACKS_GENRES (
id_track int references TRACKS(id_track),
id_genre int references GENRES(id_genre),
primary key (id_track, id_genre)
);

CREATE TABLE RELEASES (
id_release SERIAL primary key,
release_name varchar(250) NOT NULL,
release_type varchar(50) NOT NULL,
release_date date NOT NULL,
release_description text,
upc varchar(12) NOT NULL,
id_country int references COUNTRIES(id_country)
);

CREATE TABLE RELEASES_TRACKS (
id_release int references RELEASES(id_release),
id_track int references TRACKS(id_track),
primary key (id_release, id_track)
);

CREATE TABLE PRODUCERS (
id_producer SERIAL primary key,
producer_name varchar(200) NOT NULL
);

CREATE TABLE PRODUCERS_TRACKS (
id_producer int references PRODUCERS(id_producer),
id_track int references TRACKS (id_track),
primary key (id_producer, id_track)
);

CREATE TABLE COMPOSERS (
id_composer SERIAL primary key,
composer_name varchar(200)
);

CREATE TABLE COMPOSERS_TRACKS (
id_composer int references COMPOSERS(id_composer),
id_track int references TRACKS (id_track),
primary key (id_composer, id_track)
);

CREATE TABLE LABELS (
id_label SERIAL primary key,
label_name varchar(120),
label_description text
);

CREATE TABLE RELEASES_LABELS (
id_release int references RELEASES (id_release),
id_label int references LABELS (id_label),
primary key (id_release, id_label)
);

CREATE TABLE RELEASES_ARTISTS (
id_release int references RELEASES(id_release),
id_artist int references ARTISTS (id_artist),
primary key (id_release, id_artist)
);
