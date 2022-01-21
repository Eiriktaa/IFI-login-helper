#!/bin/bash


## Replace with UIO username
username="eiriktaa"

## This folder needs to exist on IFI-machine or the build will fail
## Replace with any folder of your choice o
makefolder="c"

# Sends all .C files and makefile to UIO machine
scp *.c makefile $username@login.ifi.uio.no:~/$makefolder/

# Starts the command to make and runs the C program on UIO machine
echo $1
ssh $username@login.ifi.uio.no "cd ~/${makefolder} && make $1"
