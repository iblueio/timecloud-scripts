#!/bin/bash
if [ ! -n "$1" ]; then
  echo "Timecloud.deploy.sh needs a git address!"
  exit 1
fi
git_address=$1
tmp=$(echo $git_address | sed 's/\(.*\/\)\(.*\)/\1/')
tmp2=$(echo $git_address | sed 's/\(.*\.\)\(.*\)/\1/')
last_slash_index=${#tmp}
last_dot_index=${#tmp2}
project_name_length=$[last_dot_index-last_slash_index-1]
project_name=${git_address:$last_slash_index:$project_name_length} &&\
echo $project_name
git clone $1 &&\
scp -P 33333 -r $project_name root@139.199.115.138:/root/npm/$project_name/

