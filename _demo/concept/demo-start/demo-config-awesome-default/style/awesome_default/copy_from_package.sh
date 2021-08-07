#!/usr/bin/env bash


##
## $ dpkg -L awesome | grep rc.lua
## /etc/xdg/awesome/rc.lua
##


#cp '/etc/xdg/awesome/rc.lua' './rc.lua'
cp "$(dpkg -L awesome | grep rc.lua)" "./rc.lua"
