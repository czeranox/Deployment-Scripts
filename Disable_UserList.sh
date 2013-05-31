#!/bin/sh
# (c) 2013 Mike Becker SUNY Purchase College
# Forces name and password LoginWindow which *should* resolve issue where User List shows up when MCX prefs don't kick in fast enough

defaults write /Library/Preferences/com.apple.loginwindow SHOWFULLNAME -bool yes

exit 0


