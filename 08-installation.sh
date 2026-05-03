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