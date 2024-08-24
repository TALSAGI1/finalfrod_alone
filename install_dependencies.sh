#!/bin/bash
curl -fsSL https://get.docker.com/ | sh
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
docker pull lordagam/joseph-agam-project-devops_node:22
docker pull lordagam/joseph-agam-project-devops_php:22
docker pull lordagam/joseph-agam-project-devops_mysql:8.0.28
