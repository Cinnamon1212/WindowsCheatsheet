## User management
Last login as user:
```
Get-LocalUser | Where-Object {$_.Lastlogon -ge (Get-Date).AddDays(-10)} | Select-Object Name,Enabled,SID,Lastlogon | Format-List
```
Create user:
```
New-LocalUser -Name Peter -Password (ConvertTo-SecureString "Pa$$w0rd" -AsPlainText -Force)
```
## Logs

## Networking

## Administration

## Printers

