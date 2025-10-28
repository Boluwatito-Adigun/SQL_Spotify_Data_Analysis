/*

*/


-- Top 3 most-viewed tracks for each artist.

WITH temp_table_1 AS 
(
    SELECT 
        artist,
        track,
        sum (views) AS total_views,
        DENSE_RANK() OVER(PARTITION BY artist ORDER BY sum(views) DESC) AS rank 
    FROM
        spotify
    GROUP BY
        artist, track
    ORDER BY
        artist, total_views DESC
)

SELECT 
    *
FROM temp_table_1
WHERE
    rank <=3;

-- Tracks where the liveness score is above the average.

SELECT
    track,
    liveness
FROM
    spotify
WHERE
    liveness > (SELECT AVG(liveness) FROM spotify)

-- Calculate the difference between the highest and lowest energy values for tracks in each album.

With temp_table_2 AS
(
    SELECT 
        album,
        MAX(energy) AS highest_energy,
        MIN(energy) AS lowest_energy
    FROM 
        spotify
    GROUP BY
        album
)

SELECT 
    album,
    highest_energy - lowest_energy AS energy_difference
FROM
    temp_table_2
ORDER BY
    energy_difference DESC


-- Tracks where the energy-to-liveness ratio is greater than 1.2

WITH temp_table_3 AS 
(
    SELECT
        track,
        energy / liveness AS energy_to_liveness_ratio
    FROM
        spotify
)

SELECT
    track,
    energy_to_liveness_ratio
FROM
    temp_table_3
WHERE
    energy_to_liveness_ratio > 1.2
ORDER BY
    energy_to_liveness_ratio DESC;


