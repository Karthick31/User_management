#!/bin/bash

# This script creates an account on the system.

USERNAME=$1
USERID=$2
COMMENT=$3
HOMEDIR=$4


# Create the user.
/usr/sbin/useradd -m -u $USERID -c "$COMMENT" -g $USERID -d $HOMEDIR -s /bin/bash $USERNAME

# Set the password for the user.
echo ${USERNAME} | passwd --stdin ${USER_NAME}

