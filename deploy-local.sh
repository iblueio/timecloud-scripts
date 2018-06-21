#!/bin/bash

# 参数校验
if [ ! -n "$1" ]; then
  echo "Timecloud.deploy-local.sh needs a directory!"
  exit 1
fi

# 将项目复制到工作目录即可
directory=$1
cp -r $1 $HOME/npm/
echo "Success deploy !"
