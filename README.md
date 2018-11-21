# README

This is an app that lets you query products base on product name, department and/or promotion.

## HOW TO RUN APP

Docker is required to proceed with the following steps. If you don't have Docker installed already, you can download it [here](https://www.docker.com/get-started).

1. clone repository onto local machine 
    ```ruby 
    git clone git@github.com:emily-gao/amazon.git amazon
    ```
2. cd into directory 
    ```ruby 
    cd amazon
    ```
3. set up Rails skeleton 
    ```ruby
    docker-compose run web rails new . --force --database=postgresql
    ```
4. build Docker image 
    ```ruby
    docker-compose build
    ```
5. start the app 
    ```ruby
    docker-compose up
    ```
6. create the database, run migration and seed 
     ```ruby
     docker-compose run web rake db:setup
     ```

## Tech Stack

postgreSQL

Ruby on Rails

Docker

AWS
