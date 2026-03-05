#!/bin/bash
/usr/bin/aria2c \
  --enable-rpc \
  --rpc-secret "$(cat /home/fenglengshun/.config/aria2-secret)" \
  --save-session=/home/fenglengshun/.local/share/aria2c-session \
  --save-session-interval=10 \
  --force-save=true \
  --save-not-found=true
