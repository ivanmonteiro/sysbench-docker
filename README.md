# Mariadb stress test on docker containers

## Usage:
```
docker-compose build
docker-compose up --abort-on-container-exit --exit-code-from stresstest
```

Change the default sysbench test at docker-compose.yml

## List of sysbench tests:
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