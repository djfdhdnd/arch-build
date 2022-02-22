#!/bin/bash

mkdir -p packages

urls=$(curl https://github.com/djfdhdnd/arch-build/releases/tag/packages -s|grep "djfdhdnd/arch-build/releases/download/packages/"|awk -F '"|"' '{print$2}')

for i in ${urls[*]}; do 
pkg=$(echo $i|awk -F '/' '{print$7}')
echo Downloading $pkg
wget -q https://github.com/$i -P packages/
repo-add -p packages.db.tar.gz ./packages/$pkg
done

