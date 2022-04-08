#!/bin/sh
rclone --check-first --order-by modtime,desc --checksum sync onedrive_business: onedrive:Onedrive_business -u --checkers=500 --transfers=8 --use-mmap --buffer-size=128M --onedrive-chunk-size=10M --multi-thread-cutoff=64M --multi-thread-streams=10 --exclude "{.svn,.git,.idea}/" -v -P
