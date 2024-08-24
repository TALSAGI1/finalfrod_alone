#!/usr/bin/env bash
docker stop tal_ex2_exam_node
docker stop tal_ex2_exam_php
docker stop tal_ex2_exam_mysql
docker rm tal_ex2_exam_node
docker rm tal_ex2_exam_php
docker rm tal_ex2_exam_mysql
docker rmi -f talsa/tal_ex2_exam:latest
