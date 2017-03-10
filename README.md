# CheckMK Network Monitoring

Checks, plugins and other stuff related to CheckMK

# Flexible Notifications

## Sources

* https://mathias-kettner.de/checkmk_flexible_notifications.html

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

# Misc

## Downtime script

Python script to set downtimes of services and/or hosts
