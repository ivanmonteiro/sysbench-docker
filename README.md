# Database stress test on docker containers

This project is a stress test for the database. It creates a sysbench container connected to a mysql Mariadb database.

# Pre-requisites

Docker is required to run this project.
Docker-compose is also required to run this project.

## Usage:

To run this project, you need to run the following commands:

```
docker-compose build
docker-compose up --abort-on-container-exit --exit-code-from stresstest
```

## List of sysbench tests:

Here is a list of the available sysbench tests. Change the docker-compose.yml file to run a different test.

```
bulk_insert.lua  
oltp_insert.lua        
oltp_read_write.lua        
oltp_write_only.lua
oltp_point_select.lua  
oltp_update_index.lua      
select_random_points.lua
oltp_delete.lua  
oltp_read_only.lua     
oltp_update_non_index.lua  
select_random_ranges.lua
```
