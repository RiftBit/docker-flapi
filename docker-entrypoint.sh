#!/bin/bash
set -e

if [ "$1" = 'with-update' ]; then
    cd /application $$ git pull origin master
fi
exec "/application/runp.py"
