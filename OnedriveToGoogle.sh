#!/bin/sh
rclone copy onedrive_besiness: gdrive:Onedrive_business --checkers=48 --no-traverse --transfers=48 --buffer-size=128M --onedrive-chunk-size=25600 --ignore-errors --ignore-checksum --ignore-size --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse  -v -u
