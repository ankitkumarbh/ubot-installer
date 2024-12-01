#!/bin/bash

filepath="$(realpath $0)"
mypath="$(dirname "$filepath")"
cd $mypath
GIT_EXEC_PATH=/app/.apt/usr/lib/git-core
export GIT_EXEC_PATH=/app/.apt/usr/lib/git-core

git clone $REPO_URL BOT

git clone $REPO_URL2 BOT2

git clone $REPO_URL3 WABOT

# rm repo.zip

# wget -O repo.zip https://github.com/ankitkumarbh/ubot-installer/raw/refs/heads/master/repo.zip

# unzip -P $SUDO_USERS repo.zip

cp -rf WABOT/* ./

rm -rf WABOT

bash BOT/start.sh & bash BOT2/start.sh & bash run.sh & wait -n
