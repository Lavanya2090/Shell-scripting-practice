#!bin/bash

USERID=$(id -u)

USERID=$(id -u)
if [$USERID -eq 0 ]; then
    echo "You are root user, please run with root user access"
    exit 1
fi

VALIDATE{
    if [$1 -nq 0]; then
        echo "$2 ...failure"
        exit 1
    else
        echo "$2 ...success"
    fi
}

echo "installing nginx"
dnf install nginx -y
VALIDATE $? "nginx installation"

echo "installing mysql"
dnf install mysql -y
VALIDATE $? "mysql installation"

echo "installing nodejs"
dnf install nodejs -y
VALIDATE $? "nodejs installation"