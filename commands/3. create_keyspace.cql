// 1. List Keyspaces
// The DESCRIBE KEYSPACES or SHOW KEYSPACES command is used to list all the available keyspaces in your Cassandra cluster.

DESCRIBE KEYSPACES;

// 2. Describe a Keyspace
// The DESCRIBE KEYSPACE command shows the configuration details of a specific keyspace, including its replication strategy and other settings.
DESCRIBE KEYSPACE keyspace_name;
// Example:
DESCRIBE KEYSPACE my_keyspace;

// 3. Use a Keyspace
// The USE command switches the context to a specific keyspace, allowing you to perform operations (such as creating tables) within that keyspace.
USE keyspace_name;
// Example:
USE my_keyspace;
// This will display information such as the replication strategy, durable writes setting, and any other configuration specific to the keyspace.

// 4. Create a Keyspace with SimpleStrategy and NetworkTopologyStrategy
// If you're using multiple data centers, you would typically use the NetworkTopologyStrategy for replication. Here’s how you can specify replication across multiple data centers.
// Example:
CREATE KEYSPACE my_keyspace
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3} 
AND durable_writes = true;


CREATE KEYSPACE my_keyspace
WITH replication = {
    'class': 'NetworkTopologyStrategy',
    'dc1': 3,
    'dc2': 2
} AND durable_writes = true;
// 'dc1': Replication factor for data center 1.
// 'dc2': Replication factor for data center 2.

// 2.1. Check the Keyspace's Current Configuration
// You can retrieve the current configuration of a keyspace (e.g., replication strategy, replication factor, durable writes) by describing the keyspace as mentioned earlier.
DESCRIBE KEYSPACE my_keyspace;
// Key Concepts Related to Keyspaces:
// Replication Strategy:
// SimpleStrategy: Used for single data center clusters.
// NetworkTopologyStrategy: Used for multi-data center clusters. Allows specifying different replication factors for each data center.
// Durable Writes: Ensures that data is written to disk before an acknowledgment is sent back. Default is true.
// Replication Factor: Defines how many copies of data will be stored in the cluster. It can be defined per data center in case of NetworkTopologyStrategy.


// create 2 nodes in one cluster
// Step 1: Create a Docker Network
// create a Docker network that the nodes will use to communicate.
docker network create cassandra_network

// Step 2: Start the First Node (Seed Node)
docker run -d --name cassandra-node1 --network cassandra_network -e CASSANDRA_CLUSTER_NAME="TestCluster" -e CASSANDRA_SEEDS="cassandra-node1" -e CASSANDRA_LISTEN_ADDRESS="cassandra-node1" -e CASSANDRA_BROADCAST_ADDRESS="cassandra-node1" cassandra:latest

// Step 3: Start the Second Node
docker run -d --name cassandra-node2 --network cassandra_network -e CASSANDRA_CLUSTER_NAME="TestCluster" -e CASSANDRA_SEEDS="cassandra-node1" -e CASSANDRA_LISTEN_ADDRESS="cassandra-node2" -e CASSANDRA_BROADCAST_ADDRESS="cassandra-node2" cassandra:latest

// Connect to the first node
docker exec -it cassandra-node1 bash

// See cluter details
nodetool status


// 5. Alter a Keyspace
// The ALTER KEYSPACE command is used to modify an existing keyspace. You can change the replication strategy or other properties of the keyspace.
ALTER KEYSPACE keyspace_name 
WITH replication = {'class': 'ReplicationStrategy', 'key': 'value'};
// Example:
ALTER KEYSPACE my_keyspace 
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 5};
// You can also modify the durable_writes property like this:
ALTER KEYSPACE my_keyspace 
WITH durable_writes = false;

// 5. Drop a Keyspace
// The DROP KEYSPACE command is used to delete a keyspace and all its contents (tables, data, etc.).
DROP KEYSPACE keyspace_name;
// Example:
DROP KEYSPACE my_keyspace;
