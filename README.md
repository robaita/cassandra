# An Exploration of Cassandra Database

This repository consists of basic introduction of python and its application to below contexts
<ul>
  <li>How to install Docker and Get the Cassandra Terminal</li>
  <li>Create Keyspaces in Cassandra </li>
  <li>Creating and Deleting Tables</li>
  <li>Select command to search and retieve records</li>
  <li>Insert and Update Queries</li>
  <li>Creating and Deleting Tables</li>
  <li>Batch Execution</li>
  <li>Copy data from external sources</li>
  <li>Adding new machine (Node) into the cluster</li>
 </ul>
<hr> 

# How to install Docker
<ul>
<li>
Refer [Docker Installation](https://github.com/robaita/cassandra/blob/master/commands/1.%20docker_installation.cql) for docker installation on Linux Systems.
</li>
<li>
Refer [Docker Installation](https://github.com/robaita/cassandra/blob/master/commands/2.%20docker_mac%20installation.cql) for docker installation on MAC Systems.
</li>
<li>
Refer [Download Docker](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module&_gl=1*olcq68*_gcl_au*OTU0OTYxNzUuMTczNTI3OTk4NA..*_ga*MzY2NDk2Njg5LjE3MzUyNzk5ODQ.*_ga_XJWPQMJYHQ*MTczNjU5MTA5OS4yLjEuMTczNjU5MjI3My42MC4wLjA.) for docker installation on Windows Systems.
</li>
<ul>

## Follow the below commands to make docker up
<ul>
  <li>Start Cassandra with a docker run command:
  <ul>
      <li>
    docker run --name cass_cluster cassandra:latest
    </li>
  </ul>
  </li>
  <li>Mount a folder into docker and start cassandra
  <ul>
    <li>
    docker run -d --name cass_cluster -v <Folder_path>:/data cassandra
    </li>
  </ul>
  </li>
  <li>To get CQLSH command terminal
  <ul>
      <li>
    docker exec -it cass_cluster cqlsh
    </li>
  </ul>
  </li>

  
 </ul>

 <!-- <hr> 
<ul>
  <li>Introduction to Artificial Neural Network</li>
  <li>Face Recognition with ANN</li>
 </ul>
<hr> -->

