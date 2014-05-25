#!/bin/sh

rsync --delete -avv -e "ssh -i $1 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" $2 $3