#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --check-first --transfers=60 --buffer-size=128M --ignore-errors --ignore-checksum --ignore-size  --ignore-existing --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u -P
