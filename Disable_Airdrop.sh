#!/bin/sh
# (c) 2013 Mike Becker SUNY Purchase College
# Disables AirDrop

defaults write /System/Library/User\ Template/English.lproj/Library/Preferences/com.apple.NetworkBrowser.plist DisableAirDrop -bool YES

exit 0


