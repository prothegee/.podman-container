_pg_psql_1_cr() {
	podman exec -it postgres-1-cr /bin/bash -c "psql -U postgres";
}
_pg_psql_2_hw() {
	podman exec -it postgres-2-hw /bin/bash -c "psql -U postgres";
}
