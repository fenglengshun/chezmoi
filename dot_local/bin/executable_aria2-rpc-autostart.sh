#!/bin/bash

SECRET_FILE="/home/fenglengshun/.config/aria2-secret"

if [ ! -f "$SECRET_FILE" ]; then
  tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 32 > "$SECRET_FILE"
  chmod 600 "$SECRET_FILE"
fi

/usr/bin/aria2c \
  --enable-rpc \
  --rpc-secret "$(cat "$SECRET_FILE")" \
  --save-session=/home/fenglengshun/.local/share/aria2c-session \
  --save-session-interval=10 \
  --force-save=true \
  --save-not-found=true
