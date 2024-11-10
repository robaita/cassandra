
CREATE KEYSPACE user_interactions (
    user_id UUID,
    video_id UUID,
    interaction_type TEXT,
    interaction_time TIMESTAMP,
    PRIMARY KEY ((user_id))
);

CREATE KEYSPACE video_metadata (
    video_id UUID,
    title TEXT,
    description TEXT,
    tags LIST<TEXT>,
    category TEXT,
    view_count int,
    like_count int,
    PRIMARY KEY ((video_id), category, view_count)
);

CREATE TABLE videos_by_category (
    category TEXT,
    upload_time TIMESTAMP,
    video_id UUID,
    title TEXT,
    view_count int,
    PRIMARY KEY (category, upload_time)
);

// In Cassandra, a partition key and a clustering key are essential components of the primary key and play crucial roles in how data is distributed, stored, and retrieved. Here’s an explanation of each, followed by an example CREATE TABLE statement with both partition and clustering keys.

// Key Definitions:
// Partition Key:
    // 1. The partition key is the first part of the primary key in Cassandra.
    // 2. It determines which node will store the data by hashing the key, distributing data across the cluster.
    // 3. Rows with the same partition key are stored together in the same partition on a single node, allowing for fast access to related data.
    // 4. In the PRIMARY KEY definition, the partition key is the first element in the key tuple or enclosed in parentheses when composite (multiple fields form the partition key).

// Clustering Key:
    // 1. The clustering key is the second part of the primary key, used to sort data within each partition.
    // 2. Rows with the same partition key are ordered by the clustering key, allowing for ordered retrieval of data within each partition.
    // 3. Multiple clustering keys can be specified to define a custom sorting order for data within the partition.