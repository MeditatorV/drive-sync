#!/bin/sh
rclone --check-first --order-by modtime,ascending --refresh-times sync onedrive_business: onedrive:Onedrive_business --checkers=48 --transfers=48 --use-mmap --buffer-size=128M --onedrive-chunk-size=128M --multi-thread-cutoff=258M --multi-thread-streams=10 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
