#!/bin/bash

docker pull postgres
docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres --name json-in-postgres postgres
docker exec -it json-in-postgres bash