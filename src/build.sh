#!/usr/bin/env bash

[ -z "$1" ] && echo "Error: need one argument" && exit 1

rm -rf output/*
pelican content
cp -rf output/* ..
cd ..
git add --all .
git commit -m $1
git push origin master
