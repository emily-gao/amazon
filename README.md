# README

This is an app that lets you query products base on product name, department and/or promotion.

### HOW TO RUN APP
1. clone repository onto local machine ```git clone git@github.com:emily-gao/amazon.git amazon```
2. cd into directory ```cd amazon```
3. set up Rails skeleton ```docker-compose run web rails new . --force --database=postgresql```
4. build Docker image ```docker-compose build```
5. start the app ```docker-compose up```
6. create the database, run migration and seed ```docker-compose run web rake db:setup```

### Tech Stack
postgreSQL
Ruby on Rails
Docker
AWS
