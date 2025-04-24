#! /bin/bash

echo "1. updating ubuntu"
sudo apt-get update

echo "2.installing java -jdk 17"
sudo apt install -y openjdk-17-jdk

echo "3.adding jenkins package to apt lists"

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "4. Updating and installing jenkins "
sudo apt-get update
sudo apt-get install jenkins 
