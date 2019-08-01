#!/bin/bash -x

rm -f "/var/run/apache2/apache2.pid"
exec apache2ctl -DFOREGROUND