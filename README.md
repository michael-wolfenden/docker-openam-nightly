## Building

> docker build -t wolfenden/docker-openam-nightly .

## Running

> docker run --rm -it -p 8080:8080 --add-host 'openam.example.com:127.0.0.1' --name openam wolfenden/docker-openam-nightly
 
* --rm : removes the container as soon as you stop it
* -p   : forwards the port to your host (or if you use boot2docker to this IP)
* -it  : allows interactive mode
* --add-host : for OpenAM to be configured correctly the container must resolve the FQDN DNS name used to access OpenAM.

### Launching

For OpenAm to work correctly, I found you need to access the container using `openam.example.com` as the fqdn

So instead accessing the container at (using docker for windows beta)

> http://docker:8080/openam

We need to access the container at

> http://openam.example.com:8080/openam

To do this you need to find the IP of docker

> ping docker

```
Pinging docker [10.0.75.2] with 32 bytes of data:
Reply from 10.0.75.2: bytes=32 time<1ms TTL=64
Reply from 10.0.75.2: bytes=32 time<1ms TTL=64
```

Then add a hosts file entry for that IP pointing to `openam.example.com`

For example

```
# Copyright (c) 1993-2009 Microsoft Corp.
#
# This is a sample HOSTS file used by Microsoft TCP/IP for Windows.
#
# This file contains the mappings of IP addresses to host names. Each
# entry should be kept on an individual line. The IP address should
# be placed in the first column followed by the corresponding host name.
# The IP address and the host name should be separated by at least one
# space.
#
# Additionally, comments (such as these) may be inserted on individual
# lines or following the machine name denoted by a '#' symbol.
#
# For example:
#
#      102.54.94.97     rhino.acme.com          # source server
#       38.25.63.10     x.acme.com              # x client host

# localhost name resolution is handled within DNS itself.
#	127.0.0.1       localhost
#	::1             localhost
10.0.75.2 openam.example.com
```

The run OpenAm at

> http://openam.example.com:8080/openam