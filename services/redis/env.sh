_redis_cli() {
    echo -n "redis password: ";
    read -s REDIS_PASS;
    echo;
    docker exec -it redis redis-cli -a "$REDIS_PASS";# --no-auth-warning;
}
