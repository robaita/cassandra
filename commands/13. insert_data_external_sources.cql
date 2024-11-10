// Mounting a folder in the docker
docker run -d --name cass_cluster -v D:/Projects/HeroVired_Online_Teaching/Apache_Cassendra:/data cassandra

// Execute the cqlsh command to get the terminal
docker exec -it cass_cluster cqlsh

// Insert data from the external sources 'CSV File'
COPY students (id, student_name, age) FROM '/data/database.csv' WITH HEADER = true;