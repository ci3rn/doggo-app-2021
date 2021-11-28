# Run client
1. Install dependencies if you're running for the first time:
cd client
npm install

2. To run client:
npm start

# Run and configure app server
1. Download and install docker: https://docs.docker.com/get-docker/
2. Download and install SQL Developer: https://www.oracle.com/tools/downloads/sqldev-downloads.html
3. Download and install JAVA if necessary
4. Download JDBC MySQL connector: https://dev.mysql.com/downloads/connector/j/
5. Check if docker is installed correctly by typing in terminal/cmd: 
docker --version
6. To pull MySQL database docker image run:
docker pull mysql
7. To run MySQL databse 
docker run --name doggo-db -e MYSQL_ROOT_PASSWORD=pwd -p 3306:3306 -d mysql:latest
8. To check if database is up and running:
docker container ls -a
9. To connect to database via SQL Developer you'll have to add downloaded MySQL JDBC connector to SQL Developer configuration.
Preferences -> Database -> Third Party JDBC Drivers -> Add entry
After that you'll be able to set MySQL database connection in SQL Developer.
10. Run database setup queries which can be found in server/sql/db-setup.sql file.
11. To run app server:
cd server
node index.js

## Possible errors:
Status : Failure -Communications link failure

The last packet sent successfully to the server was 0 milliseconds ago. The driver has not received any packets from the server.

https://stackoverflow.com/questions/50093144/mysql-8-0-client-does-not-support-authentication-protocol-requested-by-server