#!/bin/bash

#displaying the uid

echo "your uid is ${UID}"

#displaying the username

USER_NAME=$(id -un)
echo "your username is ${USER_NAME}"
