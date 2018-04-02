#!/bin/bash


KEY="$1"
case $KEY in
    'total')
        echo `free -B | grep "Mem:" | awk '{print $2}'`
        ;;
    'used')
        echo `free -B | grep "Mem:" | awk '{print $3}'`
        ;;
    'free')
        echo `free -B | grep "Mem:" | awk '{print $4}'`
        ;;
    'available')
        echo `free -B | grep "Mem:" | awk '{print $7}'`
        ;;
esac
