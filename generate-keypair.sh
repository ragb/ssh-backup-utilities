#!/bin/sh

# Generate key pair with no password
ssh-keygen -f $1 -b 2048 -q -P ""

