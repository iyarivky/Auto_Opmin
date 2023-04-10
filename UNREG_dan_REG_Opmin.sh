#!/bin/sh

WAKTU=2
termux-sms-send -n 99722 -s 0 UNREG
echo "SEND UNREG"
sleep $WAKTU
termux-telephony-call *808*363*3*1#
echo "DIAL OPMIN"
