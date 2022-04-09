#!/bin/sh
rclone--order-by modtime,desc --fast-list --check-first --size-only sync onedrive_business: onedrive:Onedrive_business -u --checkers=100 --transfers=4 --use-mmap --buffer-size=128M --onedrive-chunk-size=100M --multi-thread-cutoff=250M --multi-thread-streams=4 --exclude "{.svn,.git,.idea}/" -v -P
