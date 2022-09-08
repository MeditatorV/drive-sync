#!/bin/sh
rclone --fast-list --order-by modtime,desc sync --size-only onedrive: onedrive_bit:OneDrive_business --checkers=64 --transfers=4 --buffer-size=1024M --onedrive-chunk-size=102400 --multi-thread-cutoff=1024M --multi-thread-streams=10 --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u

