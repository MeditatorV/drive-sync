#!/bin/sh
rclone  --size-only --fast-list sync onedrive_business: onedrive_bit: -u --checkers=24 --transfers=2 --use-mmap --buffer-size=128M --cache-chunk-size=5M --onedrive-chunk-size=100M --multi-thread-cutoff=250M --multi-thread-streams=4 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v 
