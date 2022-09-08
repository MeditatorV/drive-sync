#!/bin/sh
rclone  --fast-list --order-by modtime,desc copy --size-only  onedrive: onedrive_junmark:OneDrive_business --checkers=64 --transfers=4  --buffer-size=1024M --onedrive-chunk-size=102400 --multi-thread-cutoff=1024M --multi-thread-streams=10 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
