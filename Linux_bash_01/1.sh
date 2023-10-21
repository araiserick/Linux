#!/bin/bash

# Проверяет присутствует ли директория по абсолютному пути

read -r DIRNAME 
DIRNAME=/tmp/testdir
if [[ $DIRNAME == /* ]]; then
    echo "Путь к директории является абсолютным"
    if [ -d "$DIRNAME" ]; then
        echo "exists"  
    else
        mkdir $DIRNAME
        echo "create"
    fi
    else
        echo "Путь к директории является относительным"
fi

