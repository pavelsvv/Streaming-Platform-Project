--1--Total streams per artist
SELECT artist_name, SUM(streams) as Total_Streams
FROM artists JOIN ARTISTS_TRACKS 
ON artists.id_artist = artists_tracks.id_artist
JOIN TRACKS ON tracks.id_track = artists_tracks.id_track
GROUP BY artist_name;


--2--Top 10 artists (by streams)
SELECT artist_name, SUM(streams) as Total_Streams
FROM artists JOIN ARTISTS_TRACKS 
ON artists.id_artist = artists_tracks.id_artist
JOIN TRACKS ON tracks.id_track = artists_tracks.id_track
GROUP BY artist_name 
ORDER BY Total_Streams DESC
LIMIT 10;


--3--Number of songs per artist
SELECT artist_name, COUNT(track_name) AS nr_piese
FROM artists JOIN ARTISTS_TRACKS 
ON artists.id_artist = artists_tracks.id_artist
JOIN TRACKS ON tracks.id_track = artists_tracks.id_track
GROUP BY artist_name 
ORDER BY nr_piese asc;


--4--Releases with a certain number of songs
SELECT release_name, release_type, release_date, COUNT(track_name) 
FROM RELEASES left JOIN RELEASES_TRACKS
ON RELEASES.id_release = RELEASES_TRACKS.id_release
left JOIN TRACKS 
ON TRACKS.id_track = RELEASES_TRACKS.id_track
GROUP BY (release_name, release_type, release_date)
having COUNT(track_name)  = 0


--5--Songs above average streams (by country)
SELECT track_name, version_name, release_name, 
       country_name, streams
FROM TRACKS JOIN RELEASES_TRACKS ON
TRACKS.id_track = RELEASES_TRACKS.id_track
JOIN RELEASES ON RELEASES.id_release = RELEASES_TRACKS.id_release
JOIN COUNTRIES ON COUNTRIES.id_country = RELEASES.id_country
GROUP BY tracks.id_track, track_name, version_name, release_name, country_name, streams, COUNTRIES.id_country
having streams > (
SELECT AVG(TRACKS.streams) 
FROM TRACKS JOIN RELEASES_TRACKS ON
TRACKS.id_track = RELEASES_TRACKS.id_track
JOIN RELEASES ON RELEASES.id_release = RELEASES_TRACKS.id_release
WHERE RELEASES.id_country = COUNTRIES.id_country)


--6--Songs with more than one genre
SELECT track_name, version_name, COUNT(genre_name) 
FROM TRACKS JOIN TRACKS_GENRES ON
TRACKS.id_track = TRACKS_GENRES.id_track
JOIN GENRES ON GENRES.id_genre = TRACKS_GENRES.id_genre
GROUP by tracks.id_track, track_name, version_name
having COUNT(genre_name) > 1

--7--Average streams (by genre)
SELECT genre_name, AVG(streams) AS nr_med_streams
FROM TRACKS JOIN TRACKS_GENRES ON
TRACKS.id_track = TRACKS_GENRES.id_track
JOIN GENRES ON GENRES.id_genre = TRACKS_GENRES.id_genre
Group by genre_name 
ORDER BY nr_med_streams desc
