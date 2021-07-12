#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --transfers=24 -–checkers 12 -v --ignore-errors --ignore-checksum --ignore-size --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse --buffer-size=128M -u
