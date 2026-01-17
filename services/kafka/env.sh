_kafka_enter() {
    podman exec -it -w /opt/kafka/bin kafka /bin/bash;
}

_kafka_create_topic() {
    podman exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic $@";
    # podman exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic $@ --config cleanup.policy=compact --config min.cleanable.dirty.ratio=0.01 --config delete.retention.ms=1000";
}

_kafka_update_topic() {
    podman exec -it kafka-1 /bin/bash -c "echo "$2" | /opt/kafka/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic $1";
}

_kafka_delete_topic() {
    podman exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic $@";
}

_kafka_consume_topic() { 
    podman exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $@";
    # podman exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $@ --from-beginning --property print.key=true";
}

_kafka_topics() {
    podman exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --list && exit";
}
