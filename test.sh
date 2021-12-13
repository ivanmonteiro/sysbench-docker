#!/bin/bash -xv

#prepare
sysbench --mysql-host=mariadb  --mysql-db=stresstest --mysql-user=testuser  \
         --db-driver=mysql --mysql-password=testuser \
         --mysql-port=3306 /usr/share/sysbench/$1  prepare

# run tests
sysbench --mysql-host=mariadb  --mysql-db=stresstest --mysql-user=testuser \
         --max-requests=0  --db-driver=mysql --mysql-password=testuser \
         --time=15  --report-interval=5 \
         --mysql-port=3306 --threads=128 /usr/share/sysbench/$1 run
# cleanup
sysbench --mysql-host=mariadb  --mysql-db=stresstest --mysql-user=testuser \
         --db-driver=mysql --mysql-password=testuser \
         --mysql-port=3306 /usr/share/sysbench/$1 cleanup