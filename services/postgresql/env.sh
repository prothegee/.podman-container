_pg_psql() {
	podman exec -it postgres-1-cr /bin/bash -c "psql -U postgres";
}
