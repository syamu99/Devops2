#!/bin/bash
GIT=git@github.com:syamu99/Devops2.github.io
REPO=Devops2.github.io
WEBSITE=https://www.tooplate.com/zip-templates/2103_central.zip
PKG=apt
FILE=2103_central
sudo $PKG update
sudo $PKG install wget git unzip figlet -y
git clone $GIT
mkdir -p secondtemp
cd secondtemp
sudo wget $WEBSITE
sudo unzip -o $FILE.zip
sudo rm -rf ~/$REPO/*
sudo cp -r $FILE/* ~/$REPO/
cd ..
sudo rm -rf secondtemp
cd ~/$REPO
git add .
git status
sleep 2
git commit -m "$(date)"
git push -f
figlet done
