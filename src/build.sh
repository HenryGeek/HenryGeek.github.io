#!/usr/bin/env bash

#[ -z "$1" ] && echo "Error: need one argument" && exit 1

shopt -s extglob
rm -rf ../!(src)
rm -rf output/*
pelican content
cp -rf output/* ..
cd ..
git add --all .
