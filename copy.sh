#!/bin/sh
rclone copy onedrive_business: onedrive:Onedrive_business --transfers=48 -v --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse --buffer-size=64M -u --no-modtime
