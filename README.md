# MSSQL-Config

# Introduction
Welcome to the MSSQL-Config project repository! This project aims to provide a convenient and standardized way to configure and manage Microsoft SQL Server instances with Docker.
I installed dependencies drivers for MSSQL on the container.
Also, I used Apache as a webserver and a PHP code (QuickDbTest.php) for testing MSSQL Database.


# Requirements
#### Step 1 
OS: Linux all versions (Ubuntu recommended).

#### Step 2 
Install [Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04) and [docker-compose](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04) on your machine.

# Usage
## Clone project
```  
git clone https://github.com/adel-bz/VERO-Digital-Solutions.git
```
## Run project
```
cd VERO-Digital-Solutions
sudo bash launcher.sh
```
## Stop project
```
sudo docker-compose down -v
```

# Test project
Write the below address on your browser:
```
http://127.0.0.1:4567/QuickDbTest.php
```
Or use the below command on your terminal:
```
curl http://127.0.0.1:4567/QuickDbTest.php
```
You must get a response like this:
```
<pre>
[
    {
        "congratulations": "Success!!!",
        "stars": "1"
    },
    {
        "congratulations": "You did it!!!",
        "stars": "2"
    }
]</pre>
```

# Refrences
https://hub.docker.com/_/microsoft-mssql-server

https://gist.github.com/xenogew/3440d323b00e1d661966f2b2ca3ef64a

https://stackoverflow.com/questions/75631319/pecl-install-pdo-sqlsrv-make-fails-on-ddev-using-debian-11-missing-libltdl-la
