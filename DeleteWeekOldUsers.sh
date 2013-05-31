#!/bin/sh

# (c) 2013 Mike Becker & Walter Meyer SUNY Purchase College

userList=`dscl . list /Users UniqueID | awk '$2 > 1000 {print $1}'`
userDeleteStatus=`curl http://svnetmgt03.purchase.edu/userdel.html`

for a in $userList ; do
		find /Users -type d -maxdepth 1 -mindepth 1 -not -name "Shared" -mtime +7 | grep "$a"
			if [[ $? == 0 && $userDeleteStatus == "True" ]]; then #if the last command succeeded and $userDeleteStatus == true...
				dscl . delete /Users/"$a" #delete the account
				rm -r /Users/"$a" #delete the home directory
			fi
done