#!/bin/bash

lOG_FILE="/var/log/shell-script/$0.log"  #$0 is for file name will take autonatically
lOGS_FoLDER="/var/log/shell-script"

USERID=$(id -u)
if [ $USERID -eq 0 ]; then
    echo "You are root user, please run with root user access"
    exit 1
fi

mkdir -p $lOGS_FoLDER

VALIDATE(){
    if [ $1 -nq 0 ]; then
        echo "$2 ...failure" | tee -a $lOG_FILE  #tee -a is used to print the o/p on terminal and also append to log file
        exit 1
    else
        echo "$2 ...success" | tee -a $lOG_FILE
    fi
}

for package in $@  #sudo sh 12-loops.sh nginx mysql nodejs
do 
    echo "installing $package"
    dnf install $package -y &>> $lOG_FILE
    VALIDATE $? "$package installation"
done