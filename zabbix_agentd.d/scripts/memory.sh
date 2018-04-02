#!/bin/bash


KEY="$1"
case $KEY in
    'total')
        echo `free -b | grep "Mem:" | awk '{print $2}'`
        ;;

esac
