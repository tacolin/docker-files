#!/bin/bash 

/etc/init.d/ssh restart 

exec "$@"
