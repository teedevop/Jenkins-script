#!/bin/bash

    #Description : Script to install some packages
    #Author : Tee Omotunde
    #Date : January-2023

## ---------- script that Install some packages in Linux -----------------

sudo yum install finger -y
sudo yum install curl -y
sudo yum install zip -y
sudo yum install vim -y
sudo yum install epel-release -y
sudo yum install htop -y
sudo yum install httpd -y
systemctl status httpd
systemctl enable httpd
systemctl start httpd
sudo yum install net-tools
yum-utils

#end