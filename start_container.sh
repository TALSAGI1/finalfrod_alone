#!/usr/bin/env bash

docker run -itd --name joseph-agam-project-devops_node -p 3000:3000 lordagam/joseph-agam-project-devops_node:22
docker run -itd --name joseph-agam-project-devops_php -p 80:80 lordagam/joseph-agam-project-devops_php:22
docker run -itd --name joseph-agam-project-devops_mysql -p 3306:3306 -e MYSQL_DATABASE=super-app -e MYSQL_ROOT_PASSWORD=password mysql:8.0.28
