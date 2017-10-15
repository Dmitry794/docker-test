#!/bin/bash
IMG_NAME="ump-image"
if [ -n "$1" ]; then
  IMG_NAME=$1
fi
echo $IMG_NAME
docker build -t $IMG_NAME . | tee build.log
