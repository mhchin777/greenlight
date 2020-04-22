#!/bin/bash
cwd=$(pwd)
cd ~/greenlight-custom/greenlight/
sudo docker-compose down
sudo ./scripts/image_build.sh narcos release-v2
sudo docker-compose up -d
cd $cwd
