#!/bin/bash 

service tftpd-hpa restart

exec "$@"
