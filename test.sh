#!/bin/bash

#prepare
sysbench --mysql-host=mariadb  --mysql-db=stresstest --mysql-user=testuser  \
         --db-driver=mysql --mysql-password=testuser \
         --mysql-port=3306 --table-size=100000 /usr/share/sysbench/$1  prepare

# run tests
sysbench --mysql-host=mariadb  --mysql-db=stresstest --mysql-user=testuser \
         --max-requests=0  --db-driver=mysql --mysql-password=testuser \
         --time=60  --report-interval=5 \
         --mysql-port=3306 --table-size=100000 --threads=12 /usr/share/sysbench/$1 run
# cleanup
sysbench --mysql-host=mariadb  --mysql-db=stresstest --mysql-user=testuser \
         --db-driver=mysql --mysql-password=testuser \
         --mysql-port=3306 /usr/share/sysbench/$1 cleanup