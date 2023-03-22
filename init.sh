#!/bin/bash

set -e 
if [ $1 != "no-update" ];then
  sudo apt update
fi

