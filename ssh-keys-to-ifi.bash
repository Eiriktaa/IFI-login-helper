#!/bin/bash

# Run this script in your homefolder ~/
# to run: bash ssh-keys-to-ifi.bash

#Replace with your UIO username
username=$1
mkdir ~/.ssh
cd ~/.ssh

#Copies the SSH-Keys to the relevant UIO-server
ssh-keygen -f ./ifi-login -t ed25519 -C "${username}@uio.no"
ssh-copy-id -i ./ifi-login.pub ${username}@login.ifi.uio.no

#Adds the key to the ssh-agent 
eval `ssh-agent`
ssh-add ~/.ssh/ifi-login

#tests connection
ssh ${username}@login.ifi.uio.no
