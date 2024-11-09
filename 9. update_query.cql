UPDATE video_metadata
SET title = 'Mastering Food'
WHERE category = 'Food' AND view_count = 500 AND video_id =  243f9cd9-313c-486c-9e1e-bb84ec8853a2;

UPDATE user_interactions
SET interaction_type = 'comment' where user_id = 74c94c77-bcf7-4e49-8c20-7e6fcc2c2554;