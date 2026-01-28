#!/usr/bin/bash
cdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)";
cdir_service="$cdir/services";

_podman_container-start() {
    arg1="$1";

    arg1_all="all";
    arg1_redis="redis";
    arg1_kafka="kafka";
    arg1_mongodb="mongodb";
    arg1_rabbitmq="rabbitmq";
    arg1_scylladb="scylladb";
    arg1_postgresql="postgresql";

    if [[ $arg1 == $arg1_all ]]; then
        echo "start: services $arg1_all";
        cd "$cdir_service/$arg1_redis";
        podman-compose -f ./podman.yaml start;
        cd "$cdir_service/$arg1_kafka";
        podman-compose -f ./podman.yaml start;
        cd "$cdir_service/$arg1_mongodb";
        podman-compose -f ./podman.yaml start;
        cd "$cdir_service/$arg1_rabbitmq";
        podman-compose -f ./podman.yaml start;
        cd "$cdir_service/$arg1_scylladb";
        podman-compose -f ./podman.yaml start;
        cd "$cdir_service/$arg1_postgresql";
        podman-compose -f ./podman.yaml start;
    elif [[ $arg1 == $arg1_redis ]]; then
        echo "start: service $arg1_redis";
        cd "$cdir_service/$arg1_redis";
        podman-compose -f ./podman.yaml start;
    elif [[ $arg1 == $arg1_kafka ]]; then
        echo "start: service $arg1_kafka";
        cd "$cdir_service/$arg1_kafka";
        podman-compose -f ./podman.yaml start;
    elif [[ $arg1 == $arg1_mongodb ]]; then
        echo "start: service $arg1_mongodb";
        cd "$cdir_service/$arg1_mongodb";
        podman-compose -f ./podman.yaml start;
    elif [[ $arg1 == $arg1_rabbitmq ]]; then
        echo "start: service $arg1_rabbitmq";
        cd "$cdir_service/$arg1_rabbitmq";
        podman-compose -f ./podman.yaml start;
    elif [[ $arg1 == $arg1_scylladb ]]; then
        echo "start: service $arg1_scylladb";
        cd "$cdir_service/$arg1_scylladb";
        podman-compose -f ./podman.yaml start;
    elif [[ $arg1 == $arg1_postgresql ]]; then
        echo "start: service $arg1_postgresql";
        cd "$cdir_service/$arg1_postgresql";
        podman-compose -f ./podman.yaml start;
    else
        echo "INFO: arg1 is not provided, skipping";
    fi

    cd "$PWD";

    echo "start: $arg1 finished";
}

_podman_container-stop() {
    arg1="$1";

    arg1_all="all";
    arg1_redis="redis";
    arg1_kafka="kafka";
    arg1_mongodb="mongodb";
    arg1_rabbitmq="rabbitmq";
    arg1_scylladb="scylladb";
    arg1_postgresql="postgresql";

    if [[ $arg1 == $arg1_all ]]; then
        echo "stop: services $arg1_all";
        cd "$cdir_service/$arg1_redis";
        podman-compose -f ./podman.yaml stop;
        cd "$cdir_service/$arg1_kafka";
        podman-compose -f ./podman.yaml stop;
        cd "$cdir_service/$arg1_mongodb";
        podman-compose -f ./podman.yaml stop;
        cd "$cdir_service/$arg1_rabbitmq";
        podman-compose -f ./podman.yaml stop;
        cd "$cdir_service/$arg1_scylladb";
        podman-compose -f ./podman.yaml stop;
        cd "$cdir_service/$arg1_postgresql";
        podman-compose -f ./podman.yaml stop;
    elif [[ $arg1 == $arg1_redis ]]; then
        echo "stop: service $arg1_redis";
        cd "$cdir_service/$arg1_redis";
        podman-compose -f ./podman.yaml stop;
    elif [[ $arg1 == $arg1_kafka ]]; then
        echo "stop: service $arg1_kafka";
        cd "$cdir_service/$arg1_kafka";
        podman-compose -f ./podman.yaml stop;
    elif [[ $arg1 == $arg1_mongodb ]]; then
        echo "stop: service $arg1_mongodb";
        cd "$cdir_service/$arg1_mongodb";
        podman-compose -f ./podman.yaml stop;
    elif [[ $arg1 == $arg1_rabbitmq ]]; then
        echo "stop: service $arg1_rabbitmq";
        cd "$cdir_service/$arg1_rabbitmq";
        podman-compose -f ./podman.yaml stop;
    elif [[ $arg1 == $arg1_scylladb ]]; then
        echo "stop: service $arg1_scylladb";
        cd "$cdir_service/$arg1_scylladb";
        podman-compose -f ./podman.yaml stop;
    elif [[ $arg1 == $arg1_postgresql ]]; then
        echo "stop: service $arg1_postgresql";
        cd "$cdir_service/$arg1_postgresql";
        podman-compose -f ./podman.yaml stop;
    else
        echo "INFO: arg1 is not provided, skipping";
    fi

    cd "$PWD";

    echo "stop: $arg1 finished";
}

_podman_container-restart() {
    arg1="$1";

    arg1_all="all";
    arg1_redis="redis";
    arg1_kafka="kafka";
    arg1_mongodb="mongodb";
    arg1_rabbitmq="rabbitmq";
    arg1_scylladb="scylladb";
    arg1_postgresql="postgresql";

    if [[ $arg1 == $arg1_all ]]; then
        echo "restart: services $arg1_all";
        cd "$cdir_service/$arg1_redis";
        podman-compose -f ./podman.yaml restart;
        cd "$cdir_service/$arg1_kafka";
        podman-compose -f ./podman.yaml restart;
        cd "$cdir_service/$arg1_mongodb";
        podman-compose -f ./podman.yaml restart;
        cd "$cdir_service/$arg1_rabbitmq";
        podman-compose -f ./podman.yaml restart;
        cd "$cdir_service/$arg1_scylladb";
        podman-compose -f ./podman.yaml restart;
        cd "$cdir_service/$arg1_postgresql";
        podman-compose -f ./podman.yaml restart;
    elif [[ $arg1 == $arg1_redis ]]; then
        echo "restart: service $arg1_redis";
        cd "$cdir_service/$arg1_redis";
        podman-compose -f ./podman.yaml restart;
    elif [[ $arg1 == $arg1_kafka ]]; then
        echo "restart: service $arg1_kafka";
        cd "$cdir_service/$arg1_kafka";
        podman-compose -f ./podman.yaml restart;
    elif [[ $arg1 == $arg1_mongodb ]]; then
        echo "restart: service $arg1_mongodb";
        cd "$cdir_service/$arg1_mongodb";
        podman-compose -f ./podman.yaml restart;
    elif [[ $arg1 == $arg1_rabbitmq ]]; then
        echo "restart: service $arg1_rabbitmq";
        cd "$cdir_service/$arg1_rabbitmq";
        podman-compose -f ./podman.yaml restart;
    elif [[ $arg1 == $arg1_scylladb ]]; then
        echo "restart: service $arg1_scylladb";
        cd "$cdir_service/$arg1_scylladb";
        podman-compose -f ./podman.yaml restart;
    elif [[ $arg1 == $arg1_postgresql ]]; then
        echo "restart: service $arg1_postgresql";
        cd "$cdir_service/$arg1_postgresql";
        podman-compose -f ./podman.yaml restart;
    else
        echo "INFO: arg1 is not provided, skipping";
    fi

    cd "$PWD";

    echo "restart: $arg1 finished";
}
