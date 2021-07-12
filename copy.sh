#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --check-first --checkers=12 --transfers=12 --buffer-size=128M -v -u --ignore-errors --ignore-checksum --ignore-size  --ignore-existing --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse 
