#!/bin/bash
RUN_FILE=~/Desktop/Literature # отслеживаемый файл
S=0.1 # регулярность проверки в секундах

# ваш код
while true; do
sleep $S
if [[ ! -f "$RUN_FILE" ]]; then
    echo ERROR
    exit 1
fi
done