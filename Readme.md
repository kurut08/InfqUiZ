# What is InfqUiZ?
InfqUiZ is a web application with IT quizzes

# Prerequisites
- Java 21 or newer
- Node.js
- IntelliJ IDEA (or any other IDE that can run Java and docker-compose file)
- Docker (Docker Desktop is recommended for users that are not advanced)

# Setup

## Java

Check your current **Java** version by typing `java -version`
in the **Windows Command Prompt** or **Terminal**, depending
on your system. If there's no **Java** on your computer or the
version of JDK is lower than 21, install
version **21** or higher from
https://www.oracle.com/java/technologies/downloads.

## IntelliJ IDEA
Download **IntelliJ IDEA** from
https://www.jetbrains.com/idea/download/

## Node.js
- Go to https://nodejs.org/en/download/ and download the latest version. Make sure that the **npm package manager** is part of installation bundle.
- Type `node -v` in the **Windows Command Prompt** or **Terminal** to check if **Node.js** was successfully installed.
- To check **npm** version use the `npm -v` command

## Docker
Download **Docker Desktop** at https://www.docker.com/products/docker-desktop/.
Creating an account is not necessary.

# How to run the application

## Clone the repository

-Launch **IntelliJ** and click `Get from VCS`.\
-In **Repository URL** tab put https://github.com/kurut08/InfqUiZ in the URL box.


## Run the application
-Launch **IntelliJ** and **Docker**\
-Open **docker-compose.yml** in InfqUiZ/docker and wait until there are no changes in the **Services** tab\
-Open **InfqUiZApplication.java** in InfqUiZ/spring/src/main/java/com/app/InfqUiZ\
-Open **Terminal** tab, type `cd infquiz-front` and use `npm install` command\
-After there are no changes in the Terminal tab, use `npm start` command
    
