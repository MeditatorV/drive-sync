#!/bin/sh
rclone sync --size-only onedrive_business: onedrive_bit: --checkers=48 --transfers=8 --buffer-size=128M --onedrive-chunk-size=25600 --multi-thread-cutoff=258M --multi-thread-streams=10 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
