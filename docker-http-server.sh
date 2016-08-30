#!/bin/bash
set -o xtrace
set -o nounset
set -o errexit

mkfifo -m 600 /tmp/logpipe
cat <> /tmp/logpipe 1>&2 &
chown $HTTPD_USER /tmp/logpipe

lighttpd -D -f /etc/lighttpd/lighttpd.conf "$@" 2>&1
RESULT=$?
echo "lighttpd ended with $RESULT"
exit $RESULT
