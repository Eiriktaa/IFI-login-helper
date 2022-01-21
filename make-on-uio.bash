#!/bin/bash

#####################################
# Example make file                 #
#                                   #  
# main: main.c                      #   
# 	gcc -o main main.c              # 
# run: main                         # 
# 	./main                          # 
#                                   # 
######################################

## Replace with UIO username
username="eiriktaa"

## This folder needs to exist on IFI-machine or the build will fail
## Replace with any folder of your choice o
makefolder="c"

# Checks if there is a makefile or a Makefile in the directory
makefile=./makefile
Makefile=./Makefile
cleanup=""

# Sends all .C files and makefile to UIO machine
if [ -f "$makefile" ]; then
    cleanup="&& rm makefile"
    scp *.c makefile $username@login.ifi.uio.no:~/$makefolder/
fi

# Sends all .C files and makefile to UIO machine
if [ -f "$Makefile" ]; then
    cleanup="&& rm Makefile"
    scp *.c makefile $username@login.ifi.uio.no:~/$makefolder/
fi

# Starts the command to make and run the C program on UIO machine
# Removes the makefile/Makefile to avoid conflict later

# This command uses make run so make sure to include a make run in your makefile
# Example is listed at the top of the script.

ssh $username@login.ifi.uio.no "cd ~/${makefolder} && make run $cleanup"
