#!/usr/bin/bash
CURRENT_DIR=$(pwd);

data_dirs=(
    "$(pwd)/services/kafka/data-kafka-1"
    "$(pwd)/services/kafka/data-mongodb-1"
    "$(pwd)/services/postgresql/data-postgres-1-cr"
    "$(pwd)/services/postgresql/data-postgres-2-hw"
    "$(pwd)/services/rabbitmq/data-rabbitmq-1"
    "$(pwd)/services/redis/data-redis-1-cc"
    "$(pwd)/services/scylladb/data-scylladb-1"
)
for dir in "${data_dirs[@]}"; do
    mkdir -p "$dir";
done

services_dirs=(
    "$(pwd)/services/kafka"
    "$(pwd)/services/mongodb"
    "$(pwd)/services/postgresql"
    "$(pwd)/services/rabbitmq"
    "$(pwd)/services/redis"
    "$(pwd)/services/scylladb"
)
for dir in "${services_dirs[@]}"; do
    cd $dir;
    podman-compose -f ./podman.yaml up -d;
    cd ..;
done
