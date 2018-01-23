#!/bin/bash

if [ ! -f alertmanager.yml.template ]; then
    echo "ERROR: No alertmanager.yml.template"
fi

conf_format="$(cat alertmanager.yml.template)"

eval conf=\""${conf_format}"\"

echo "${conf}" > alertmanager.yml
