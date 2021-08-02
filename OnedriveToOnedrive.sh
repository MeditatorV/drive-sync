#!/bin/sh
rclone  --checksum sync onedrive_besiness: onedrive:Onedrive_business --checkers=48 --no-traverse --transfers=48 --buffer-size=128M --onedrive-chunk-size=25600 --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
