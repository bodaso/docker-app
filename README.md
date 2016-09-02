# An Docker web app
list of tools included:

1. Docker
2. Node.js engine
3. Express web framework
4. MySQL database
5. Nodemon
6. Mocha for testing

## Prerequisites

Make sure you have Docker running on your machine

## Start

Run `docker-compose build`. 

Only for first time and whenever the Docker images needs to be rebuild.

Most time you just run this next command.

Run `docker-compose up` 

This will create and start both `web` and `db` container. 

Check browser: http://localhost:3030/ 

## Docker Guide
# run Mocha or MySQL
~~~~
# to run Mocha tests inside Docker
$ docker exec -it web_container_name bash
$ mocha test/testfile.js

# to enter MySQL database container
$ docker exec -it db_container_name bash
$ mysql -proot
~~~~
---
# useful commands to remove Docker images and containers
~~~~
# Delete all containers
$ docker rm $(docker ps -a -q)
# Delete all images
$ docker rmi $(docker images -q)
~~~~
