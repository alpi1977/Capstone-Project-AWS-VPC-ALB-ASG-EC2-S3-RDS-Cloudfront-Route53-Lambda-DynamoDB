#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="xxxxxxxxxxxxxxxxxxxxxxxxx"
git clone https://$TOKEN@github.com/alpi1977/Capstone-Project-AWS-VPC-ALB-ASG-EC2-S3-RDS-Cloudfront-Route53-Lambda-DynamoDB.git
cd /home/ubuntu/Capstone-Project-AWS-VPC-ALB-ASG-EC2-S3-RDS-Cloudfront-Route53-Lambda-DynamoDB
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Capstone-Project-AWS-VPC-ALB-ASG-EC2-S3-RDS-Cloudfront-Route53-Lambda-DynamoDB/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80