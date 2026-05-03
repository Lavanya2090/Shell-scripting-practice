#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "You are root user, please run with root user access"
    exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -nq 0 ]; then
    echo "nginx installed failure"
    exit 1
else
    echo "sucess to install nginx"
fi

echo "install mysql"
dnf install mysql -y

if [$? -nq 0]; then
    echo"mysql installed failure"
    exit 1
else
    echo "sucess to install mysql"
fi    

echo "install nodejs"
dnf install nodejs -y

if [$? -nq 0]; then
    echo"nodejs installed failure"
    exit 1
else
    echo "sucess to install nodejs"
fi  