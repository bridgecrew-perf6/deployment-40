#!/bin/bash

#Author: Caroline
#Date: June 2022

# QA java app deployment

## Make sure java is installed

if

[ $UID -ne 0 ]
then
echo " You need root access to run this!"
ecit 2
fi
echo " Installing java, please wait as this will take a while..."
sleep 2
yum install java-1.8* -y
yum install wget unzip -y

## Download the developer's code

wget --user admin --password school1 http://96.126.114.68:8081/repository/ewr/bio/bio-2/v2/bio-2-v2-bio.jar

## Run the application

java -jar bio-2-v2-bio.jar
