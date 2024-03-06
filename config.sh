#!/bin/bash
set -e
file="/home/dev/.ssh/authorized_keys"
if [[ $PUBLIC_KEY ]]; then
    echo "$PUBLIC_KEY" >> /foo
    sed -i 's/\"//g' /foo
    cat foo >> $file
    rm foo
else
    echo "PUBLIC_KEY is not set"
fi
chmod 600 $file
chown dev:dev $file
# Run SSH server
/usr/sbin/sshd -D -e
