# Introduction
This project involves analyzing a Spotify dataset with various attributes about tracks, albums, and artists using SQL. It covers an end-to-end process of normalizing a denormalized dataset, performing SQL queries of varying complexity (easy, medium, and advanced), and optimizing query performance. The primary goals of the project are to practice advanced SQL skills and generate valuable insights from the dataset.

SQL Queries? Check them out here: [project_sql_folder](/project_scripts/)

# Project Steps

## 1. Data Exploration

Before writing SQL queries, it’s essential to understand the dataset structure and contents. The dataset includes several key attributes such as:

- Artist: The performer of the track.

- Track: The title of the song.

- Album: The album in which the track appears.

- Album_type: Indicates whether the album is a single or a full album.

- Metrics: Musical characteristics such as danceability, energy, loudness, tempo, and more.

## 2. Querying the Data

Once the data has been properly inserted and structured, various SQL queries are executed to explore and analyze it. These queries are divided into three difficulty levels to promote progressive skill development.

- **Easy Queries:** Focus on simple retrieval, filtering, and basic aggregations.

- **Medium Queries:** Involve grouping, aggregation functions, and joins between tables.

- **Advanced Queries:** Utilize subqueries, window functions, Common Table Expressions (CTEs), and performance optimization techniques.

## 3. Query Optimization

In the advanced stage, emphasis is placed on improving query performance. Optimization techniques include:

Indexing: Creating indexes on columns frequently used in queries.

Query Execution Plan: Using EXPLAIN ANALYZE to evaluate and fine-tune query efficiency.

## 15 Practice Questions

### Easy Level

1. Retrieve the names of all tracks with more than 1 billion streams.

2. List all albums along with their respective artists.

3. Get the total number of comments for tracks where licensed = TRUE.

4. Find all tracks belonging to albums of type single.

5. Count the total number of tracks by each artist.

### Medium Level

1. Calculate the average danceability score of tracks in each album.

2. Find the top 5 tracks with the highest energy levels.

3. List all tracks along with their views and likes where official_video = TRUE.

4. For each album, calculate the total number of views across all its tracks.

5. Retrieve track names that have been streamed more on Spotify than on YouTube.

### Advanced Level

1. Find the top 3 most-viewed tracks for each artist using window functions.

2. Write a query to retrieve tracks whose liveness score is above the average.

3. Use a WITH clause (CTE) to calculate the difference between the highest and lowest energy values for each album.

# Technology Stack

- **Database:** PostgreSQL

- **SQL Techniques:** DDL, DML, Aggregations, Joins, Subqueries, Window Functions

- **Tools:** pgAdmin 4, Git, and PostgreSQL

# Summary & Conclusion

This project provides a comprehensive hands-on experience with SQL, from data preparation to performance tuning. By working through queries of increasing complexity, it strengthens your understanding of database design, data analysis, and optimization. Ultimately, it serves as a strong foundation for real-world data analytics and database management scenarios.