#!/usr/bin/bash
CURRENT_DIR=$(pwd);

services_dirs=(
    "$(pwd)/services/kafka"
    "$(pwd)/services/postgresql"
    "$(pwd)/services/rabbitmq"
    "$(pwd)/services/redis"
    "$(pwd)/services/scylladb"
)
for dir in "${services_dirs[@]}"; do
    cd $dir;
    podman-compose -f ./podman.yaml down;
    cd ..;
done
