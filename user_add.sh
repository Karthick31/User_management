#!/bin/bash
# This script creates an account on the system.

USERNAME=$1



# Create the user.
/usr/sbin/useradd -m -s /bin/bash $USERNAME

# Set the password for the user.
echo "${USERNAME}:${USERNAME}" | /usr/sbin/chpasswd > /dev/null 2>&1

