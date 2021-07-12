#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --checkers=12 --transfers=24 -v --ignore-errors --ignore-checksum --ignore-size --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse --buffer-size=128M -u
