#!/bin/bash
#ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
ip=$(ifconfig wlp3s0 | awk 'FNR==2' | awk '{print $2}' | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
echo $ip
