@echo off
set username=%1
set password=%2
net user %username% %password% /add
net localgroup administrators %username% /add
WMIC USERACCOUNT WHERE "Name='%username%'" SET PasswordExpires=FALSE
echo "New local admin created!"
