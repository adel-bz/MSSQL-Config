# VERO-Digital-Solutions

# Task
Create two docker containers, one holding a MSSQL database, another one holding a Web-Server offering a pre-defined PHP script. Finally write a Launcher, which starts both containers, so the Web-Server can be called

## Docker Container 1: MSSQL-Server
Write a Dockerfile for the following tasks

- Perform MSSQL Server Installation
- Set password for ```SA``` to ```Un!q@to2023```
- Run MSSQL Service

## Docker Container 2: API
- Install Webserver of your choice
- Install PHP 7.1+
- Install proper driver to connect to MSSQL Server (s. Container 1 above)
- Add the script ```QuickDbTest.php``` to the web-root folder


# Dependencies
#### Step 1 
OS (Ubuntu all versions).

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

## Test project
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
