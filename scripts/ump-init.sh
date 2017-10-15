#!/bin/bash

while [ $# -gt 0 ]; do
  case "$1" in
    --env=*)
      env="${1#*=}"
      ;;
    *)
      printf "***************************\n"
      printf "* Error: Invalid argument.*\n"
      printf "***************************\n"
      exit 1
  esac
  shift
done

. ~/.bashrc
echo "ENV: $env"


if [ -z "$container" ]; then
case "$env" in
	DEV)
		echo -n "ump init: env [${env}]..."
		sleep 2
		echo "OK"
		;;
	QA)
		echo -n "ump init: env [${env}]..."
		sleep 3
		echo "OK"
               
     		;;
	*)
		echo -n "creating new env..."
		sleep 2
		echo "OK"
		;;
esac
/scripts/init-security.sh
echo "export container=1" >> ~/.bashrc
. ~/.bashrc
fi
echo -n "starting..."
sleep 2
echo "OK"

/bin/bash
