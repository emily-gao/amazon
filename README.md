# README

This is an app that lets you query products base on product name, department and/or promotion.

### HOW TO RUN APP
```git clone git@github.com:emily-gao/amazon.git amazon```
```cd amazon```
```docker-compose run web rails new . --force --database=postgresql```
```docker-compose build```
```docker-compose up```
```docker-compose run web rake db:setup```
