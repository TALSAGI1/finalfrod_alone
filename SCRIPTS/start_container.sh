#!/usr/bin/env bash
docker run -itd --name tal_ex2_exam_node -p 3000:3000 talsa/tal_ex2_exam:latest
docker run -itd --name tal_ex2_exam_php -p 80:80 talsa/tal_ex2_exam:latest
docker run -itd --name tal_ex2_exam_mysql -p 3306:3306 -e MYSQL_DATABASE=super-app -e MYSQL_ROOT_PASSWORD=password talsa/tal_ex2_exam:latest
