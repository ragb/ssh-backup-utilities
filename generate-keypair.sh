#!/bin/sh

# Generate key pair with no password
ssh-keygen -f $1 -b 2048 -q -P ""



rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress /root/bigfile.txt 198.211.117.129:/root/


