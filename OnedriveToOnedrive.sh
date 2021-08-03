#!/bin/sh
rclone  --size-only sync onedrive_besiness: onedrive:Onedrive_business --checkers=48 --no-traverse --transfers=48 --buffer-size=128M --onedrive-chunk-size=25600 --multi-thread-cutoff=250M --multi-thread-streams=4 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
