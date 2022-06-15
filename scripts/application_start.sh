#!/bin/bash
#source /root/.bash_profile
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into our working directory where we have all our github files
su - ec2-user -c 'cd /home/ec2-user/express-app'
#cd /home/ec2-user/express-app

echo "after cd..."

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#install node modules
su - ec2-user -c 'npm install'

#start our node app in the background
su - ec2-user -c 'node app.js > app.out.log 2> app.err.log < /dev/null &'
