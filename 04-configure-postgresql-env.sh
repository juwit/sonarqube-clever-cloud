#!/bin/sh

# get env vars from clever
clever env --add-export > 04-clever-env-vars.sh

source 04-clever-env-vars.sh

clever env set SONAR_JDBC_USERNAME $POSTGRESQL_ADDON_USER
clever env set SONAR_JDBC_PASSWORD $POSTGRESQL_ADDON_PASSWORD
clever env set SONAR_JDBC_URL "jdbc:postgresql://${POSTGRESQL_ADDON_HOST}:${POSTGRESQL_ADDON_PORT}/${POSTGRESQL_ADDON_DB}"

clever restart