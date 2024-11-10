// 1. user_interactions Table
INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'view', '2024-01-01 10:00:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'like', '2024-01-01 10:05:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'comment', '2024-01-01 10:10:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'view', '2024-01-01 10:20:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'like', '2024-01-01 10:30:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'view', '2024-01-01 10:40:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'comment', '2024-01-01 10:45:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'like', '2024-01-01 10:50:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'view', '2024-01-01 10:55:00');

INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'like', '2024-01-01 11:00:00');

// 1. video_metadata Table
INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Travel Vlog', 'A day in Paris', ['travel', 'vlog', 'paris'], 'Travel', 1000, 100);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Cooking 101', 'How to make pasta', ['cooking', 'pasta', 'recipe'], 'Food', 500, 50);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Tech Review', 'Latest smartphone review', ['tech', 'smartphone'], 'Technology', 1500, 150);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Gaming Highlights', 'Top moments of 2024', ['gaming', 'highlights'], 'Gaming', 2000, 250);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Fitness Routine', 'Daily workout', ['fitness', 'workout'], 'Health', 800, 75);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Science Explained', 'Quantum mechanics basics', ['science', 'quantum'], 'Education', 1200, 130);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Nature Documentary', 'Exploring the Amazon', ['nature', 'documentary'], 'Nature', 1800, 220);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'DIY Crafts', 'Creative paper art', ['diy', 'crafts', 'art'], 'Hobbies', 600, 60);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Music Video', 'Top hits of the year', ['music', 'hits'], 'Music', 2500, 300);

INSERT INTO video_metadata (video_id, title, description, tags, category, view_count, like_count)
VALUES (uuid(), 'Machine Leanring Explained', 'ML basics', ['data science', 'statistics'], 'Education', 2000, 530);


