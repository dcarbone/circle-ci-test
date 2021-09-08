#!/usr/bin/env bash

echo "Envvars:"
printenv
echo

echo "PWD:":
pwd
echo

echo "whoami"
echo whoami $(id -u) $(id -g)
echo

echo "What's here:"
ls -lsah
echo