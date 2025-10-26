SELECT 
    count(*)
FROM
    spotify;

-- Count of Distinct artists
SELECT 
    count(DISTINCT artist)
FROM
    spotify;

-- Count of Album type

SELECT 
    count(DISTINCT album_type)
FROM
    spotify;

-- Maximum and Minimum Duration Minutes
SELECT 
    MAX(duration_min)
FROM
    spotify;

SELECT 
    MIN(duration_min)
FROM
    spotify;

DELETE FROM
    spotify
WHERE
    duration_min = 0;

-- Number of Channels
SELECT 
    count(DISTINCT channel)
FROM
    spotify;

SELECT 
    DISTINCT most_played_on
FROM
    spotify;









