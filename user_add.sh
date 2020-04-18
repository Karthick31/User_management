#!/bin/bash
# This script creates an account on the system.

USERNAME=$1

# check if the user alredy exist in the server
if getent passwd $USERNAME > /dev/null 2>&1; then
    echo -e "$GREEN $USERNAME exists"
    exit 1
fi

# Create the user.
/usr/sbin/useradd -m -s /bin/bash $USERNAME

# Set the password for the user.
echo "${USERNAME}:${USERNAME}" | /usr/sbin/chpasswd > /dev/null 2>&1

