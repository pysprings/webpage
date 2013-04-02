#!/bin/bash

[[ -z "$2" ]] && echo "Usage: $0 <solenoid_home> <lang_COUNTRY> [--1.8]" && exit

[[ ! -e "$1" ]] && echo "Error: $1 not found." && exit

theme_po="$1/translations/$2.po"
[[ ! -e "$theme_po" ]] && echo "Error: $theme_po not found." && exit

if [ "$3" == "--1.8" ]; then
    moin_version="18"
else
    [[ -n "$3" ]] && echo "Unknown option: $3" && exit
    moin_version="19"
fi

moin_lang=`echo $2 | tr '[:upper:]' '[:lower:]' | tr _ -`

# Extract strings from the code
xgettext --no-location -s "$1"/*.py -o /tmp/new.pot

# Find theme translations
msgmerge -qsN "$theme_po" /tmp/new.pot -o /tmp/new.po

# Print unused translations
grep '#~ msgid' /tmp/new.po && echo

# Find Moin translations
wget -U 'good-guy' -q http://master$moin_version.moinmo.in/MoinI18n/$moin_lang?action=raw -O /tmp/moin.po
msgmerge -qsN /tmp/moin.po /tmp/new.po -o /tmp/new.po

# Print unstranslated strings
msggrep --msgstr -ve '.*' /tmp/new.po | grep -E -A 1 'msgid ".+"' | sed s/--//

# Clean
rm /tmp/*.po*

