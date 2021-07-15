#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --check-first --checkers=10 --transfers=60 --buffer-size=128M --onedrive-chunk-size=102400 --ignore-errors --ignore-checksum --ignore-size  --ignore-existing --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u -P

