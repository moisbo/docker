#! /bin/bash


path_to_dir=/tmp

current_dir=$(pwd)

echo In: $current_dir

cp ${current_dir}/index.js ${path_to_dir}

docker run --shm-size 1G --rm \
 -v ${path_to_dir}:/app \
 alekzonder/puppeteer:latest \
 node index.js
