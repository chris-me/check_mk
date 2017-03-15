# Load Exchange Management Powershell Plugin
try{ (Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010 -ErrorAction:Stop) }
# exit without any output if this fails
catch{exit}

#Get-MailboxDatabase -status |sort-object name |ft name,databasesize,availablenewmailboxspace

# TODO: PublicFolderDatabases
#Get-PublicFolderDatabase -status|ft name,databasesize,availablenewmailboxspace

$dbs = Get-MailboxDatabase -status

write-host "<<<msexch_db_whitespace>>>"
foreach ($db in $dbs) {
    $dbnumber = $db.Name -replace '\D+(\d+)','$1'
    "" + $dbnumber + " " +  $db.DatabaseSize.toMB() + " " + $db.AvailableNewMailboxSpace.toMB()
}
