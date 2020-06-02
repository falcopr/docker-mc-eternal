#!/bin/bash
cd "${0%/*}"
docker-compose -p mc_eternal down
./backup.sh
find ./backup -mindepth 1 -mtime +7 -type f -delete
docker-compose -p mc_eternal up -d
