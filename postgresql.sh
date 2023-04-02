#!/bin/bash

yum update -y
amazon-linux-extras enable postgresql14
yum install postgresql-server -y
postgresql-setup initdb
systemctl start postgresql
systemctl enable postgresql 
useradd franki
groupadd manager
yum install docker -y
systemctl start docker
docker run -d -p 8000:80 httpd
