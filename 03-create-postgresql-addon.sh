#!/bin/sh

clever addon create \
  --plan xxs_sml \
  postgresql-addon \
  sonarqube-db

clever service link-addon sonarqube-db