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
Ping sweep: 
```
FOR /L %i IN (1,1,254) DO ping -a -n 1 192.168.10.%i | FIND /i "Reply">>c:\ipaddresses.txt
```
## Printers
Printer list:
```
wmic printer list brief
```
## Tasks
View tasks:
```
schtasks
```
Create a task:
```
Schtasks create /RU username /RP password /SC schedule_frequency /MO Schedule_modifier /D days /M months /TN taskname /TR Task_command /ST start_time /SD start_day /ED end_date
```

