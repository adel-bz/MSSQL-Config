#!/bin/bash

# Grant permissions for our scripts to be executable
chmod +x ./db/entrypoint.sh
chmod +x ./db/configure-db.sh


# Start
docker compose up -d
