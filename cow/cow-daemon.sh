#!/bin/sh
# Monitor the config dir of cow, restart cow service when any config file is modified.
# @ inotify-tools::inotifywait

CFG_DIR=/etc/cow/
SERVICE=/etc/init.d/cow
SLEEP=3

while true; do
  inotifywait -e modify -r $CFG_DIR &&
    $SERVICE restart
  sleep $SLEEP
done
