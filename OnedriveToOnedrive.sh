#!/bin/sh
rclone --check-first --order-by modtime,desc --checksum sync onedrive_business: onedrive:Onedrive_business -u --checkers=100 --transfers=4 --use-mmap --buffer-size=128M --onedrive-chunk-size=100M --multi-thread-cutoff=64M --multi-thread-streams=10 --exclude "{.svn,.git,.idea}/" -v -P
