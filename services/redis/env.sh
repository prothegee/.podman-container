_redis_cli() {
    echo -n "redis password: ";
    read -s REDIS_PASS;
    echo;
    podman exec -it redis-1-cc redis-cli -a "$REDIS_PASS";# --no-auth-warning;
}
