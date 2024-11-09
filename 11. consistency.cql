// 1. Write Consistency Levels
// Cassandra provides several consistency levels for write operations, such as ANY, ONE, QUORUM, ALL, etc. Each consistency level determines how many replicas must acknowledge the write before it is considered successful.

// Keyspace creation
CREATE KEYSPACE IF NOT EXISTS my_keyspace
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3} 
AND durable_writes = true;

// Table creation
CREATE TABLE IF NOT EXISTS user_interactions (
    user_id UUID,
    video_id UUID,
    interaction_type TEXT,
    interaction_time TIMESTAMP,
    PRIMARY KEY ((user_id))
);

// Example 1: Write with ONE Consistency Level
// In this case, the write is considered successful after being acknowledged by one replica node in the cluster.
CONSISTENCY ONE;
INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'like', '2024-08-01 10:00:00');

// Example 2: Write with QUORUM Consistency Level
CONSISTENCY QUORUM;
INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'comment', '2024-08-12 10:00:00');
// This ensures that the write is acknowledged by a majority of nodes (a quorum) in the cluster.

// Example 3: Write with ALL Consistency Level
CONSISTENCY ALL;
INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'comment', '2024-06-12 12:00:00');


// 2. Read Consistency Levels
// Example 1: Read with ONE Consistency Level
CONSISTENCY ONE;
SELECT * FROM user_interactions WHERE user_id = 7584588b-1b3d-44f3-b128-0b6a72cd9eb3;
// This read query will return data from just one replica.
// It is faster but less reliable if there are network partitions or data inconsistencies.

// Example 2: Read with QUORUM Consistency Level
CONSISTENCY QUORUM;
SELECT * FROM user_interactions WHERE user_id = 7584588b-1b3d-44f3-b128-0b6a72cd9eb3;
// This query requires data to be fetched from a quorum of nodes, providing a balance between consistency and performance.

// Example 3: Read with ALL Consistency Level
CONSISTENCY ALL;
SELECT * FROM user_interactions WHERE user_id = 7584588b-1b3d-44f3-b128-0b6a72cd9eb3;
//  This read query requires that all replicas of the data respond. It ensures the most consistent data, but can result in higher latency.



CONSISTENCY ALL;
INSERT INTO user_interactions (user_id, video_id, interaction_type, interaction_time)
VALUES (uuid(), uuid(), 'comment', '2024-11-12 12:00:00');

CONSISTENCY ONE;
SELECT * FROM user_interactions WHERE user_id = c4f6ee94-34ca-4a24-a6a8-f213c36d83e2;

