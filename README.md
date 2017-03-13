# CheckMK Network Monitoring

Checks, plugins and other stuff related to CheckMK

# Flexible Notifications

## About

If you want to notify someone via CheckMK in a way that is not included already
(like E-Mail or smstools), you can write your own notification script. As an
example you can use the 'mynotify' script in this repo to help getting started.
The script is very short and simply shows how to use variables received from 
CheckMK. It also outputs all current environment variables.

## Howto Use

* Put the 'mynotify' script to '~/local/share/check_mk/notifications/'
* Make sure its executable
* Now you can create a new notification rule in Wato --> Notifications
* Use the new Notification method and for testing simply check 'notify all users'
* Now go and trigger some notifications
* You can track the output of your script in the file '~/var/log/notify.log'

## Sources

* https://mathias-kettner.de/checkmk_flexible_notifications.html

# Local Checks

## Active Directory

### Locked ActiveDirectory Accounts

Local check plugin to drop on a windows machine for checking if certain accounts
are currently locked.

# Misc

## Downtime script

Python script to set downtimes of services and/or hosts. Can be executed from
anywhere the CheckMK Server instance is reachable via http request.

# Plugins - Work-In-Progress

How To write your own CheckMK Plugins

## Installation

### Linux Client

* Copy 'my_example_plugin' to /usr/lib/check_mk_agent/plugins/
* Make file executable
* Plugin output should now be in the output of server (try command check_mk_agent)
* At the Server (for testing):

```bash
cmk -d SERVERNAME
```

### Server

* Copy 'server/checks/my_example_check' to '/opt/omd/sites/yoursite/local/share/check_mk/checks/'
* Copy 'server/wato/my_example_check.py' to '/opt/omd/sites/yoursite/local/share/check_mk/web/plugins/wato/'
* 'cmk -L' should now already show the check
* Restart CheckMK service 'cmk -R'
* After service discovery in WATO there should now be 5 new services
* Activate as usual
* Check parameters (warn, crit) can be adjusted va WATO

## Sources

* https://mathias-kettner.de/checkmk_writing_checks.html
* https://mathias-kettner.de/checkmk_devel_agentbased.html
