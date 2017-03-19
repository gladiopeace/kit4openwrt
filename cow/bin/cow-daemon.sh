#!/bin/sh
# @inotify-tools

ETC_DIR=/etc/cow/
SERVICE=/etc/init.d/cow
SLEEP=3

while true; do
  inotifywait -e modify -r $ETC_DIR &&
    $SERVICE restart
  sleep $SLEEP
done
