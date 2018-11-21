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
3. build Docker image 
    ```ruby
    docker-compose build
    ```
4. start the app 
    ```ruby
    docker-compose up
    ```
5. create the database, run migration and seed 
     ```ruby
     docker-compose run web rake db:setup
     ```

## Tech Stack

postgreSQL

Ruby on Rails

Docker

AWS

## Continuous Deployment

AWS Pipeline. [http://amazon-env.pafm4mfxgp.us-east-2.elasticbeanstalk.com/](http://amazon-env.pafm4mfxgp.us-east-2.elasticbeanstalk.com/)(currently code build is failing)
