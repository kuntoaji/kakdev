#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
  echo "Example usage: ./generate_ssh_key.sh youremail@example.com"
else
  ssh-keygen -t rsa -b 4096 -C $1
fi