# Emmanuel English School Admin App
## Admin App
This is the admin application that allows users as teacher, administrator and other type of users to create new users, register new students and insert student marks, the studant performace.



## Table of contents
- [How to use](#how-to-use)
- [Requirements](#requirements)
- [Clone the repository](#1-clone-this-repository)
- [Database](#2-import-the-database)
- [Install dependencies](#3-open-your-ide-to-install-dependencies)
- [Build and run](#4-access-the-using-the-command-line)
- [Login](#5-login-process)
- [Users credentials](#6-credentials)
- [Author](#author)

## How to use
### Requirements
- Java 17+
- Spring Tool Suite IDE
- MySQL
- Git
### Steps
#### 1. Clone this repository
```
git clone https://github.com/maleianefernando/EESAdminApp.git
```
#### 2. Database
##### Import the database
Database file: ```emmanuel_english_school_web.sql```

Into the ```/Emmanuel Englsh School/Emmanuel-Englsh-School-WebApp/src/main/resources/static/sql``` directory we can access the application database, import it to your xampp server or sql.

#### 3. Install dependencies
Open you IDE to and go to the pom.xml file to install dependencies
#### 4. Build and run
Access the app using the command-line-interface:
```
cd Emmanuel Englsh School/Emmanuel-Englsh-School-WebApp
```
Since your are in this directory type this command to build the app:
```
./mvnw package
```
Run the app:
```
./mvnw spring-boot:run
```
##### Run option
If your are machine are not able to run the app using this commands tou can just run on your IDE going to the run button.

#### 5. Login Process
Now [http://localhost:9091/](http://localhost:9091/) open your browser and sign in any account.

##### 6. Credentials
- Your can find the credentias on the table ```utilizadores```.
- The username is in the name column and the password not encoded is in the ```senha``` column.

#### 7. Logout Process
- To logout the application just request the ```/logout``` api endpoint: [http://localhost:9091/logout](http://localhost:9091/logout)

## Author
Fernando Paulo Maleiane
