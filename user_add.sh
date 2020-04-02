#!/bin/bash

# This script creates an account on the system.

USER_NAME=$1


# Create the user.
useradd ${USER_NAME}

# Set the password for the user.
echo ${USER_NAME} | passwd --stdin ${USER_NAME}

