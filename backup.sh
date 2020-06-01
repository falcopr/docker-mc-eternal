#!/bin/bash
docker run --rm -i --name minecraft_backup -v mc-eternal-volume:/volume -v "$(pwd)/backup:/backup" debian:buster \
tar -czf /backup/minecraft-$(date +%Y-%m-%d_%H-%M-%S).tar.gz -C /volume ./
