#! /bin/bash

docker run --shm-size 1G --rm -v /tmp/screenshots:/screenshots \
 alekzonder/puppeteer:latest \
 screenshot 'https://www.uts.edu.au' 1366x768
