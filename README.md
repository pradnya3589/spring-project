# spring-boot-rest-api-monolith
Starter Spring Boot Rest Api Monolith Application


## Steps to run the application on your local machine using terminal
- JDK 1.8+ and MySQL database needs to be installed

1. First Download or clone the repository on your local machine
2. Import mysql database by running script **restapistarter_db.sql**
4. Edit file **ProjectDir/src/main/resources/application.properties** to reflect your MySQL Username & Password
3. Open terminal and move to root directory of project
    - cd D:\spring-boot-rest-api-monolith
4. run your application with gradle wrapper **bootRun** task:
    - ./gradlew bootRun
5. initially it will download all gradle dependencies and build the project.
6. Then it will start embedded tomcat server and launch our application at port 8080
7. Now go to the browser and enter url : http://localhost:8080
8. As our application is REST API application, you can test other endpoints in Postman.
