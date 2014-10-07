#!/bin/bash
echo "** inside run_nocaps.sh, unpriviledged"
set -x 

capsh --print

echo GET / | nc6 google.com 80 -v

echo "this will fail :"
ip -6 addr add dead::beef:1 dev eth0
