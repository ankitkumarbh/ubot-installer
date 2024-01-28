#!/bin/bash

filepath="$(realpath $0)"
mypath="$(dirname "$filepath")"
cd $mypath

git clone $REPO_URL BOT
git clone $REPO_URL2 BOT2
bash BOT/start.sh & bash BOT2/start.sh & wait -n
