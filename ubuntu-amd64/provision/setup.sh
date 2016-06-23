#!/bin/bash

VAGRANT_HOME="/home/vagrant"
BASH_PROFILE=".bash_profile"
LOCALE_DATA='export LC_ALL="en_US.UTF-8"'

if [ -d "$VAGRANT_HOME" ]
then
    cd "$VAGRANT_HOME"
    if [ -f "$BASH_PROFILE" ]
    then
        if grep -E 'export\s+LC_ALL=' "$BASH_PROFILE" > /dev/null 2>&1
        then
            echo "Locale already set..."
        else
            echo "$LOCALE_DATA" >> "$BASH_PROFILE"
        fi
    else
        echo "$LOCALE_DATA" > "$BASH_PROFILE"
    fi
fi
