#!/bin/bash

# Start the script to create the DB and user
/home/mssql/app/configure-db.sh &

# Start SQL Server
/opt/mssql/bin/sqlservr


