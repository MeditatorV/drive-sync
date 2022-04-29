#!/bin/sh
rclone sync --size-only onedrive_business: onedrive_junmark: --checkers=64 --transfers=8  --buffer-size=2048M --onedrive-chunk-size=25600 --multi-thread-cutoff=1024M --multi-thread-streams=10 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
