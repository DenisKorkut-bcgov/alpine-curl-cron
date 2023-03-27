#!/bin/sh

set -e

echo "1 * * * * /curl.sh" >> /var/spool/cron/crontabs/root
crond -l 2 -f

