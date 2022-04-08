#!/bin/sh
rclone --check-first --order-by modtime,desc sync onedrive_business: onedrive:Onedrive_business -u --checkers=48 --transfers=48 --use-mmap --buffer-size=128M --onedrive-chunk-size=100M --multi-thread-cutoff=256M --multi-thread-streams=10 --ignore-errors --exclude "{.svn,.git,.idea}/" -v -P
