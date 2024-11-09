// Horizontal Scalling

// Number of cluster : 1
// Number of nodes : 2

// Keyspace policy
// Class: SimpleStrategy
// replication_factor: 1, # that means the copy would be retained only at one node.

// 1. Setting Up Two Nodes with a Keyspace and Table
CREATE KEYSPACE scalling_demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

// 2. Create a Table:
CREATE TABLE users (
    user_id UUID PRIMARY KEY,
    name text,
    email text
);

// 2. Insert Data into the Table
INSERT INTO users (user_id, name, email) VALUES (uuid(), 'Alice', 'alice@example.com');
INSERT INTO users (user_id, name, email) VALUES (uuid(), 'Bob', 'bob@example.com');
INSERT INTO users (user_id, name, email) VALUES (uuid(), 'Charlie', 'charlie@example.com');
INSERT INTO users (user_id, name, email) VALUES (uuid(), 'David', 'david@example.com');

// 3. View Data Distribution Using nodetool
// The nodetool utility in Cassandra allows to see where data is distributed across nodes.
// nodetool status: This will show the token ranges assigned to each node.
nodetool status
// This command will list all the nodes in the cluster along with their token ranges.
// We will see how data is divided based on these token ranges.

// nodetool getendpoints: This command shows which node(s) have a specific partition key.
nodetool getendpoints scalling_demo users <partition_key>
// Replace <partition_key> with the actual partition key (i.e., user_id value) of a specific record
//  to see which node contains that data.

// 4. Query the System Tables to Check Data Location
// To view where each row is stored, we can query system tables to get insights into data distribution. For example, in Cassandra, the system_schema.partitions table holds metadata about data partitions.
SELECT * FROM system_schema.partitions WHERE keyspace_name = 'scalling_demo' AND table_name = 'users';



// Summary
// 1. Use nodetool status to see token ranges per node.
// 2. Use nodetool getendpoints to determine which node holds specific partition keys.
// 3. Query system_schema.partitions for metadata about data distribution.

