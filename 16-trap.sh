#!/bin/bash

set -e

trap 'echo "there is an error in $LINENO,command: $BASH_COMMAND"' ERR

lOG_FILE="/var/log/shell-script/$0.log"  #$0 is for file name will take automatically
lOGS_FoLDER="/var/log/shell-script"

USERID=$(id -u)
if [ $USERID -eq 0 ]; then
    echo "You are root user, please run with root user access"
    exit 1
fi

mkdir -p $lOGS_FoLDER


for package in $@  #sudo sh 12-loops.sh nginx mysql nodejs
do 
    dnf list installed $package &>> $lOG_FILE   #to check whether the package is already installed or not
    if [$? nq 0]; then  #if the package is not installed then it will return non zero exit code
        echo "$package not installed,installing now"
        echo "installing $package"
        dnf install $package -y &>> $lOG_FILE
        #VALIDATE $? "$package installation"
    else
        echo "$package is already installed"    
    fi    
done