#!/bin/sh
rclone  --size-only sync onedrive_besiness: onedrive:Onedrive_business --checkers=24 --tpslimit=48 --no-traverse --transfers=24 --buffer-size=128M --onedrive-chunk-size=25600 --multi-thread-cutoff=25M --multi-thread-streams=10 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
