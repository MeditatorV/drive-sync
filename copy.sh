#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --checkers=48 –size-only --no-traverse --transfers=48 --buffer-size=128M --onedrive-chunk-size=25600 --ignore-errors --ignore-checksum --ignore-size  --ignore-existing --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u -P
