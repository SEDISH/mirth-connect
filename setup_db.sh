#!/bin/bash

: ${DATABASE_HOST=mirth-db}
: ${POSTGRES_USER=mirthdb}
: ${POSTGRES_PASSWORD=mirthdb}
: ${POSTGRES_DB=mirthdb}

export DATABASE_HOST
export POSTGRES_USER
export POSTGRES_PASSWORD
export POSTGRES_DB

/utils/replace-vars /opt/mirth-connect/conf/mirth.properties
