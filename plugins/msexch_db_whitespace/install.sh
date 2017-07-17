#!/bin/bash

# Installation script for the plugin (mkp installation routine to be done)

read -p "Username of the site: " USERNAME
(id "$USERNAME" >/dev/null 2>&1)
ret=$?
if [ "$ret" -ne 0 ];then
  echo "Error - the specified user does not exist!"
  exit 1
fi

read -p "Path of destination site (e.g. /opt/omd/sites/mysite): " SITE_PATH
if [ ! -d "$SITE_PATH" ]; then
  echo "Error - the specified directory does not exist!"
  exit 1
fi

