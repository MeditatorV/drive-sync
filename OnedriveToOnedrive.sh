#!/bin/sh
rclone --size-only --fast-list --order-by modtime,desc sync onedrive_business: onedrive:Onedrive_business -u --checkers=24 --transfers=2 --use-mmap --buffer-size=1024M --onedrive-chunk-size=102400 --multi-thread-cutoff=250M --multi-thread-streams=4 --exclude "{.svn,.git,.idea}/" -v
