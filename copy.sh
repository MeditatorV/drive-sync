#!/bin/sh
rclone copy onedrive_besiness: onedrive:Onedrive_business --transfers=24 -v --ignore-errors --exclude "{.svn,.git,.idea}/" --drive-acknowledge-abuse --buffer-size=64M -u
