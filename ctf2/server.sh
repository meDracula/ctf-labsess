#!/bin/bash

echo '[+] Starting apache'
service apache2 start

# Background process of worker.sh from shell/worker.sh
./worker.sh &

while true
do
    tail -f /var/log/apache2/*.log
    exit 0
done
