#!/bin/sh
set -e

if [ -z "$(ls -A /etc/ShellCrash 2>/dev/null)" ]; then
    echo "Initializing /etc/ShellCrash from backup..."
    cp -a /etc/ShellCrash_backup/. /etc/ShellCrash/
    echo "Initialization complete."
fi

exec "$@"
