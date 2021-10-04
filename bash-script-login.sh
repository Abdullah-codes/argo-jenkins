#!/bin/bash

echo "hi from bash script"

echo $SSH_KEY

echo "first ssh attempt"
ssh -o StrictHostKeyChecking=no -i $SSH_KEY ubuntu@13.235.115.95

echo "copiyng and chaging docker-compose-file with build number"
cp docker-compose.yml.template docker-compose.yml

sed -i "s/build/$BUILD_NUMBER/g" docker-compose.yml

scp  -i $SSH_KEY init.sql docker-compose.yml ubuntu@13.233.245.60:/home/ubuntu


ssh -o StrictHostKeyChecking=no -i $SSH_KEY ubuntu@13.235.115.95 'bash -s' < ./bash-script-automation.sh

#scp -i $SSH_KEY ./bash-script-automation.sh ubuntu@52.66.164.150:/home/ubuntu