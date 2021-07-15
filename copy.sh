#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --use-server-modtime --transfers=60 --buffer-size=256M --ignore-errors --ignore-checksum --ignore-size  --ignore-existing --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u -P
