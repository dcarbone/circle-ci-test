#!/usr/bin/env bash

echo "Envvars:"
printenv
echo

echo "PWD:":
pwd
echo

echo "whoami: $(whoami); id -u: $(id -u); id -g $(id -g); \$UID: ${UID}; \$GID: ${GID}"
echo

echo "What's here:"
ls -lsah
echo