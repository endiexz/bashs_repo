#!/bin/bash
state=$(netstat -tln | grep 52345)

if [ -n "$state" ]
then
    echo "" 
fi
