#!/bin/bash

#Author: Tee Omotunde
#Date: January 2023
#Description: jenkins installation Script

Jenkins is a java application, we need to install Java on our system first. To do that:

  echo "installing java"
  sudo yum install java-11-openjdk-devel -y
  sleep 2

  echo "enabling java"
  curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
  sleep 2
  sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
  sleep 2

  echo "install latest version of jenkins"
  sudo yum install jenkins -y
  sleep 2

  echo "start jenkins"
  sudo systemctl start jenkins
  sleep 2

  echo "check jenkins status"
  sudo systemctl status jenkins
  sleep 2

  echo "enabling Jenkins"
  sudo systemctl enable jenkins
  sleep 2

  echo "Adjusting firewall"
  sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
  sleep 2
  sudo firewall-cmd --reload
  sleep 2

  #Setting up Jenkins in the browser
#Step 1: open Jenkins page from the browser
#Launch google chrome browser and type your IP address followed by the port number 8080

#http://your_ip_or_domain:8080 
#Your screen will display "Unlock Jenkins"

#Step 2:In your Terminal,
#Copy and paste the administrator password generated during Jenkins installation.
#You should see a 32-character long alphanumeric password. Copy the password and paste it into the Administrator password field in the page you have in the browser. Then click on Continue 
#Note: use this command to copy the initial password: 
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword


#Step 3: Install suggested plugins
#On the screen Customize Jenkins, you will be asked to either Install suggested plugins or Select plugins to install. Click on the Install suggested plugins box and the installation process will start immediately 


#Step 4: Create first admin user
#When the installation will be completed, you will get a form to create the First Admin User. Fill out the form an validate on Save and Continue
#Username: utrains
#Password: school1
#E-mail address: use your own email address (the one in the image is just an example)


#Step 5: Instance Configuration
#On the next page you will need to set the URL for the Jenkins instance. The Jenkins URL field will come with a default  value (automatically generated). Just click on Save and Finish 

#Jenkins is now ready for use! Click on Start using Jenkins button and you will be automatically be redirected to the Jenkins dashboard
#Here you are logged in as the First Admin user you created in a previous step