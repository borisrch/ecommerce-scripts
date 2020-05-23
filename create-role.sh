#!/bin/bash

if [ $# != 3 ]
  then
    echo "Error - There should be only 3 args"
    echo "Usage: ./create-role.sh role username password"
    exit 1
fi

role=$1
username=$2
password=$3

echo '{"username":"'$username'","password":"'$password'"}'
curl -d '{"username":"'$username'","password":"'$password'"}' -H "Content-Type: application/json" -X POST http://localhost:8080/users/sign-up

exit 0