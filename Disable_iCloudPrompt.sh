#!/bin/sh
# (c) 2013 Mike Becker SUNY Purchase College
# This will disable the iCloud window prompt when a new user logs in by renaming the launcher

mv /System/Library/CoreServices/Setup\ Assistant.app/Contents/SharedSupport/MiniLauncher /System/Library/CoreServices/Setup\ Assistant.app/Contents/SharedSupport/MiniLauncherBackup

exit 0
