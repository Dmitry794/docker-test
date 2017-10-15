#!/bin/bash
CONTAINER_NAME="con"
IMG_NAME="ump-image"
while [ $# -gt 0 ]; do
  case "$1" in
    --name=*)
      CONTAINER_NAME="${1#*=}"
      ;;
    --image=*)
      IMG_NAME="${1#*=}"
      ;;
    --env=*)
      env="${1#*=}"
      ;;
    *)
      printf "* Error: Invalid argument.*\n"
      exit 1
  esac
  shift
done


docker run -it --network=host --name=$CONTAINER_NAME $IMG_NAME --env=$env
