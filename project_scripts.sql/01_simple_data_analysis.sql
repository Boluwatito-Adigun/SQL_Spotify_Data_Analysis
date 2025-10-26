/*


*/


-- Retrieve the names of all tracks that have more than 1 billion streams.

SELECT
    track,
    stream
FROM
    spotify
WHERE
    stream >= 1000000000;

-- List all albums along with their respective artists.
SELECT
    DISTINCT album,
    artist
FROM
    spotify
ORDER BY
    artist;

-- The total number of comments for tracks where licensed = TRUE.

SELECT
    sum(comments) AS Total_comments
FROM
    spotify
WHERE
    licensed = 'True';

-- All tracks that belong to the album type single.

SELECT
    track,
    album_type
FROM
    spotify
WHERE
    album_type = 'single'
ORDER BY
    track;

-- The total number of tracks by each artist.

SELECT
    count(track) AS Total_tracks,
    artist
FROM
    spotify
GROUP BY
    artist
ORDER BY
    Total_tracks DESC;