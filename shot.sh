#!/bin/bash

adb shell mount /data
adb push fb2png /data/local/
adb push dump /data/local/
adb shell chmod 755 /data/local/fb2png
adb shell chmod 755 /data/local/dump
adb shell /data/local/dump
adb pull /data/local/ScreenShots
adb shell rm /data/local/fb2png
adb shell rm /data/local/dump
adb shell rm -r /data/local/ScreenShots
