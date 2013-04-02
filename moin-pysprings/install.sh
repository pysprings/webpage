#!/bin/bash

# Solenoid Theme - Installation script for Moin 1.8 and 1.9
# Copyright 2009 Renato Silva

silent() { "${@}" 2> /dev/null; }
[ -z "$2" ] && echo "Usage: $0 <moin_home> <wiki_home> [--1.8]" && exit

[[ ! -e "$1" ]] && echo "Error: moin home $1 not found." && exit
[[ ! -e "$2" ]] && echo "Error: wiki home $2 not found." && exit

if [ "$3" == "--1.8" ]; then
    htdocs_base="wiki"
else
    [[ -n "$3" ]] && echo "Unknown option: $3" && exit
    htdocs_base="MoinMoin/web/static"
fi

htdocs="$1/$htdocs_base/htdocs/solenoid"
i18n="$1/MoinMoin/i18n/solenoid"
i18n_ptbr="$i18n/pt-br_custom.Theme.po"
base=`dirname "$0"`

silent cp -r "$htdocs/css/custom" /tmp
silent mkdir "$htdocs" || rm -r "$htdocs"/*
silent mkdir "$i18n" || rm "$i18n_ptbr"

cp -v "$base/translations/pt_BR.po" "$i18n_ptbr"
cp -v "$base/solenoid.py" "$2/data/plugin/theme"
cp -v "$base/allactions.py" "$2/data/plugin/action"
cp -v "$base/themeprefs.py" "$2/data/plugin/userprefs"
cp -r "$base/htdocs"/* "$htdocs" && echo "$base/htdocs/* -> $htdocs"
silent cp -r /tmp/custom "$htdocs/css" && echo "/tmp/custom -> $htdocs/css/custom" && rm -r /tmp/custom
