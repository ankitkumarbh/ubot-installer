#!/bin/bash

filepath="$(realpath $0)"
mypath="$(dirname "$filepath")"
cd $mypath

git clone $REPO_URL BOT

git clone $REPO_URL2 BOT2

git clone $REPO_URL3 WABOT

cp -rf WABOT/* ./

rm -rf WABOT

bash BOT/start.sh & bash BOT2/start.sh & bash run.sh & wait -n
