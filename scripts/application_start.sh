#!/bin/bash
source /home/ec2-user/.bash_profile

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/chat

#navigate into our working directory where we have all our github files
cd /home/ec2-user/chat

#install node modules
npm install
npm start

#start our node app in the background 
node app.js > app.out.log 2> app.err.log < /dev/null & 