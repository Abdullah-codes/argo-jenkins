#!/bin/bash

echo "hi from bash script"

echo $SSH_KEY

echo "first ssh attempt"
ssh -o StrictHostKeyChecking=no -i $SSH_KEY ubuntu@13.235.115.95


ssh -o StrictHostKeyChecking=no -i $SSH_KEY ubuntu@13.235.115.95 'bash -s' < ./bash-script-automation.sh

#scp -i $SSH_KEY ./bash-script-automation.sh ubuntu@52.66.164.150:/home/ubuntu