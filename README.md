## User enumeration
Get-LocalUser | Where-Object {$_.Lastlogon -ge (Get-Date).AddDays(-10)} | Select-Object Name,Enabled,SID,Lastlogon | Format-List

## Logs

## Networking

## Administration

## Printers

