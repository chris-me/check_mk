# CheckMK Network Monitoring

Checks, plugins and other stuff related to CheckMK

- [Flexible Notifications](#flexible-notifications)
- [Local Checks](#local-checks)
- [Misc](#misc)
- [Plugins](#plugins)

## Flexible Notifications

### About

If you want to notify someone via CheckMK in a way that is not included already
(like E-Mail or smstools), you can write your own notification script. As an
example you can use the 'mynotify' script in this repo to help getting started.
The script is very short and simply shows how to use variables received from 
CheckMK. It also outputs all current environment variables.

### Howto Use

* Put the 'mynotify' script to '~/local/share/check_mk/notifications/'
* Make sure its executable
* Now you can create a new notification rule in Wato --> Notifications
* Use the new Notification method and for testing simply check 'notify all users'
* Now go and trigger some notifications
* You can track the output of your script in the file '~/var/log/notify.log'

### Sources

* https://mathias-kettner.de/checkmk_flexible_notifications.html

## Local Checks

### Active Directory

#### Locked ActiveDirectory Accounts

Local check plugin to drop on a windows machine for checking if certain accounts
are currently locked.

### Windows Tasks

#### Tasks last run state

PowerShell Script to check if specified tasks last run return value was successful

## Misc

### Downtime script

Python script to set downtimes of services and/or hosts. Can be executed from
anywhere the CheckMK Server instance is reachable via http request.

## Plugins

### Example

An example on how To write your own CheckMK Plugins, including performance data, possiblity to
configure with WATO and Perf-O-Meter outputs

#### Installation

##### Linux Client

* Copy 'my_example_check' to /usr/lib/check_mk_agent/plugins/
* Make file executable
* Plugin output should now be in the output of server (try command check_mk_agent)
* At the Server (for testing):

```bash
cmk -d SERVERNAME
```

##### Server

In the plugins / example directory:

* Copy (or symlink) 'server/checks/my_example_check' to '/opt/omd/sites/yoursite/local/share/check_mk/checks/'
* Copy (or symlink) 'server/wato/my_example_check.py' to '/opt/omd/sites/yoursite/local/share/check_mk/web/plugins/wato/'
* Copy (or symlink) 'server/perfometer/my_example_check.py' to '/opt/omd/sites/yoursite/local/share/check_mk/web/plugins/perfometer/'
* 'cmk -L' should now already show the check
* Restart CheckMK service 'cmk -R'
* After service discovery in WATO there should now be 5 new services
* Activate as usual
* Check parameters (warn, crit) can be adjusted va WATO

#### Sources

* https://mathias-kettner.de/checkmk_writing_checks.html
* https://mathias-kettner.de/checkmk_devel_agentbased.html
* http://lists.mathias-kettner.de/pipermail/checkmk-en/2015-August/016756.html
* https://www.karl-deutsch.at/dir_size_check_mk.html
* https://mathias-kettner.de/checkmk_devel_perfometer.html

### FortiMail

Monitor FortiMail CPU, MEM, Log and Disk Usage (for now the warn / crit values are hardcoded and not adjustable via Web).

#### Installation

TBD

### Microsoft Exchange Database Whitespace

Monitor Exchange Databases current whitespace. Includes Graphs and possibility to adjust values with WATO

#### Installation

The plugin is fully working, installation instructions to be done (not hard anyway).

### DataWizard Lobster

Monitor running DataWizard Lobster performance data with locally running monitor.jsp. Currently implemented is Memory.

#### Installation

The plugin is fully working, installation instructions to be done (not hard anyway).

### Network Socket Statistics

Monitor current network socket statistics summaries (currently total number of sockets and TIME_WAIT are monitored).

#### Installation

The plugin is fully working, installation instructions to be done.
