#!/bin/bash


IP=127.0.0.1
PORT=80
LOG_FILE=/var/log/syslog
STATUS_FILE=status

if [ ! -f "$STATUS_FILE" ]; then 
    if ! nc -zv "$IP_ADDRESS" "$PORT"; then
        echo "$(date +'%b %d %T') port_check: IP $IP_ADDRESS Port $PORT is available again" >> "$LOG_FILE"
        touch "$STATUS_FILE"
    fi
elif [ -f "$STATUS_FILE" ];then
    if nc -zv "$IP_ADDRESS" "$PORT"; then
    echo "$(date +'%b %d %T') port_check: IP $IP_ADDRESS Port $PORT is not available" >> "$LOG_FILE"
    rm "$STATUS_FILE"
    fi
fi
