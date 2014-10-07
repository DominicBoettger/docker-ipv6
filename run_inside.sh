#!/bin/bash
echo "** inside run_inside.sh, priviledged"
set -x 
capsh --print

ip -6 addr add "$IPV6ADDR" dev eth0
ip -6 route add default via "$IPV6GW" dev eth0
ip -6 addr show dev eth0
sleep 2

exec capsh --secbits=0x2f --drop=all --inh= -- /run_nocaps.sh
