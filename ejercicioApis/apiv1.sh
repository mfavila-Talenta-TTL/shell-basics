#! /bin/bash

curl "https://jsonplaceholder.typicode.com/users" -o users.json

jq '.[] | .name, .address' users.json
