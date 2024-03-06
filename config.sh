#!/bin/bash
set -exo

if [ -f "/home/dev/.ssh/authorized_keys" ]; then
    echo 'File has been mounted.'
else
    echo $PUBLIC_KEY >> /home/dev/.ssh/authorized_keys
fi

# Run SSH server
/usr/sbin/sshd -D -e
