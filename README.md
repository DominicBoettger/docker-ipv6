docker-ipv6
===========

This is an example Docker container which sets ipv6 address and gateway on startup.

Additional descriptions can be found under:
http://inspirationlabs.com/blog/docker-and-ipv6

This version is based on the work in https://github.com/DominicBoettger/docker-ipv6

But :

  1. uses discrete capabilites (namely `NET_ADMIN` and `SETPCAP`) and forfeits these after the setup;
  2. is based on `debian:stable`;



Steps:

  1. Edit `run_outside.sh` to set up your IPv6 address & gateway;
  2. `sh run_outside.sh`
  3. Success is indicated by something like
```
+ nc6 google.com 80 -v
nc6: 2a00:1450:4010:c07::64 (2a00:1450:4010:c07::64) 80 [http] open
```
