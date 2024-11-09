
DELETE FROM video_metadata
WHERE category = 'Food';

DELETE FROM video_metadata
WHERE category = 'Education' AND view_count = 1000 AND video_id = uuid();

// To delete all records
TRUNCATE video_metadata;

// delete the table
DROP video_metadata;




