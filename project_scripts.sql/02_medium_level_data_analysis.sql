

-- The average danceability of tracks in each album.

SELECT
    DISTINCT album as unique_album,
    avg(danceability) AS average_danceability
FROM
    spotify
GROUP BY
    DISTINCT album
ORDER BY
    average_danceability DESC;

 -- Find the top 5 tracks with the highest energy values.

SELECT
    track,
    energy
FROM
    spotify
ORDER BY
    energy DESC
LIMIT 5;    

-- List all tracks along with their views and likes where official_video = TRUE.

SELECT
    DISTINCT track,
    sum(views) AS total_views,
    sum (likes) AS total_likes
FROM
    spotify
WHERE
    official_video = 'True'
GROUP BY
    DISTINCT track
ORDER BY
    total_likes DESC; 

-- For each album, calculate the total views of all associated tracks.

SELECT
    DISTINCT album AS unique_album, 
    sum(views) AS total_views
FROM
    spotify
GROUP BY
    unique_album
ORDER BY
    total_views DESC; 


-- Retrieve the track names that have been streamed on Spotify more than YouTube.
SELECT 
    *
FROM
(
    SELECT
        track,
        COALESCE(SUM(CASE WHEN most_played_on = 'Spotify' THEN stream END),0) AS stream_on_spotify,
        COALESCE(SUM(CASE WHEN most_played_on = 'Youtube' THEN stream END),0) AS stream_on_youtube
    FROM
        spotify
    GROUP BY
        track
) AS Sq_1

WHERE
    stream_on_spotify > stream_on_youtube
AND
    stream_on_youtube > 0
ORDER BY
    stream_on_spotify DESC;





