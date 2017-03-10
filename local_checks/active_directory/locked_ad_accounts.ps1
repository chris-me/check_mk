# PowerShell Script to check wheter ActiveDirectory Accounts are locked.
# Put this on your windows server under CheckMK install dir \ local and adjust
# the accountsToCheck variable to fit your accounts to be monitored
# Module 'ActiveDirectory' must be installed
# Script outputs CRITICAL state if an account is locked

$accountsToCheck = @("account1","account2")

###############################################################################################
import-module ActiveDirectory
$lockedAccounts = Search-ADAccount -LockedOut | Where {$accountsToCheck -contains $_.SamAccountName} | select SamAccountName
if ($lockedAccounts) {
  Write-Host "2 Locked_AD_Accounts - CRITICAL - Accounts locked: " -nonewline
  foreach ($lockedAccount in $lockedAccounts) {
        Write-Host $lockedAccount.SamAccountName -nonewline
  }
  Write-Host
} else {
    Write-Host "0 Locked_AD_Accounts - OK - No Accounts locked"
}
