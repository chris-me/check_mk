#!/bin/bash

# Installation script for the plugin (mkp installation routine to be done)

echo "!!! This script assumes the installation of CheckMK is in  !!!"
echo "!!! /opt/omd/sites/USERNAME                                !!!"

SCRIPT_PATH=`dirname "$0"`
SCRIPT_PATH=`( cd "$SCRIPT_PATH" && pwd )`

read -p "Username of the site: " USERNAME
(id "$USERNAME" >/dev/null 2>&1)
ret=$?
if [ "$ret" -ne 0 ];then
  echo "Error - the specified user does not exist!"
  exit 1
fi
SITE_PATH="/opt/omd/sites/${USERNAME}"
if [ ! -d "$SITE_PATH" ]; then
  echo "Error - the specified directory does not exist!"
  exit 1
fi

cp -v $SCRIPT_PATH/server/checks/msexch_db_whitespace $SITE_PATH/local/share/check_mk/checks/
chown $USERNAME:$USERNAME $SITE_PATH/local/share/check_mk/checks/msexch_db_whitespace

cp -v $SCRIPT_PATH/server/wato/msexch_db_whitespace.py $SITE_PATH/local/share/check_mk/web/plugins/wato/
chown $USERNAME:$USERNAME $SITE_PATH/local/share/check_mk/web/plugins/wato/msexch_db_whitespace.py
