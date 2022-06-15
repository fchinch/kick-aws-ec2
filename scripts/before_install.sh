#!/bin/bash

#download
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node 

#create our working directory if it doesn't exist
DIR="/home/ec2-user/express-app"
if [  -d "$DIR" ]; then
    echo "Directory $DIR exists"
 else 
  echo "Creating directory $DIR"
  mkdir $DIR
fi

