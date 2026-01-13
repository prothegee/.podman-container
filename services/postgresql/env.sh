_pg_psql() {
	podman exec -it postgresql /bin/bash -c "psql -U postgres";
}
