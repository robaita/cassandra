// Add a column
ALTER TABLE video_metadata 
ADD video_duration INT;

// Drop a column
ALTER TABLE video_metadata 
DROP video_duration;

// Rename a column
ALTER TABLE video_metadata 
RENAME view_count TO views;






