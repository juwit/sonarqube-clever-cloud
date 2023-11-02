#!/bin/sh

clever create \
  --type docker \
  sonarqube-app

clever scale --flavor M