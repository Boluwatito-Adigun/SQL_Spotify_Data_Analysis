/*


Write a query to find tracks where the liveness score is above the average.
Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.

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

-- Write a query to find tracks where the liveness score is above the average.