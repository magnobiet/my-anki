#!/bin/bash

# env EDITOR=vim crontab -e

# 0 12 * * *  cd ~/Library/Application\ Support/Anki2 && ./backup.sh >> backup.log 2>&1
# │  │ │ │ │
# │  │ │ │ └──── day of week  (0 -  6) (0 to 6 are Sunday to Saturday)
# │  │ │ └────── month        (1 - 12)
# │  │ └──────── day of month (1 - 31)
# │  └────────── hour         (0 - 23)
# └───────────── minute       (0 - 59)

git add .
git commit -m "chore: backup "`date +"%s"`
git push
