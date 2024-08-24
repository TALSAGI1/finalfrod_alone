#!/bin/bash
curl -fsSL https://get.docker.com/ | sh
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
docker pull talsa/tal_ex2_exam:latest
