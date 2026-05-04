#!/bin/bash

set -e  #if it finds error in any command it will exit the script immediately

trap 'echo "there is an error in $LINENO,command: $BASH_COMMAND"' ERR  #it will print the line number and command which is giving error

echo "hello world"
echoo "error found"
echo "after error command"