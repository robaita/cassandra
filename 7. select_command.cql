// Retrieve values from the table
SELECT * from user_interactions;
// Query by only primary key
// Reason other search filed doesn't work
// Distribution of data between different servers happen with the help of primary key
SELECT * from user_interactions where user_id = 7584588b-1b3d-44f3-b128-0b6a72cd9eb3;

SELECT * from user_interactions where interaction_type = 'like' ALLOW FILTERING;

// filter records based on clustering key
SELECT * FROM video_metadata
WHERE category = 'Education' AND view_count > 1000
ORDER BY view_count ASC;

SELECT * from video_metadata where title = 'Gaming Highlights' ALLOW FILTERING;