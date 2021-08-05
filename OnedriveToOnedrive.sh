#!/bin/sh
rclone sync --size-only onedrive_besiness: onedrive:Onedrive_business --checkers=48 --transfers=48 --buffer-size=128M --onedrive-chunk-size=25600 --multi-thread-cutoff=258M --multi-thread-streams=10 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
