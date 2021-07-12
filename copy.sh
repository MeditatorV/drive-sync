#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --checkers=12 --transfers=12 --buffer-size=128M --check-first -v -u -P --ignore-errors --ignore-checksum --ignore-size  --ignore-existing --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse 
