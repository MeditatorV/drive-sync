#!/bin/sh
rclone --check-first --order-by modtime,desc --checksum sync onedrive_business: onedrive:Onedrive_business -u --checkers=500 --transfers=12 --use-mmap --buffer-size=128M --onedrive-chunk-size=100M --multi-thread-cutoff=128M --multi-thread-streams=10 --exclude "{.svn,.git,.idea}/" -v -P
