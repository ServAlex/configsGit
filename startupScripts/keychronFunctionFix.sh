#!/bin/sh

echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
echo `date` >> ~/serviceLog
