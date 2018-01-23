#!/bin/bash

if [ ! -f alertmanager.yml.template ]; then
    echo "ERROR: No alertmanager.yml.template"
fi

if [ -z $EMAIL_ADDR ] || [ -z $EMAIL_PASSWD ]; then
    echo "# No EMAIL_ADDR or EMAIL_PASSWD variable"
    exit
fi


conf_format="$(cat alertmanager.yml.template)"

eval conf=\""${conf_format}"\"

echo "${conf}" > alertmanager.yml
