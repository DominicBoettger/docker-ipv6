set -x 
docker build -t boris/testipv6 .
docker run --rm -e IPV6ADDR="::2" -e IPV6GW="::1" --name ping6 --cap-drop=all --cap-add=NET_ADMIN --cap-add=SETPCAP boris/testipv6
