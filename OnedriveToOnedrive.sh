#!/bin/sh
rclone sync --size-only onedrive_besiness: onedrive:Onedrive_business --checkers=12 --tpslimit=48 --transfers=12 --buffer-size=128M --onedrive-chunk-size=25600 --multi-thread-cutoff=128M --multi-thread-streams=10 --ignore-errors --ignore-size --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
