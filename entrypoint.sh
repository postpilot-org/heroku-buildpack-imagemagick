#!/bin/bash

for file in /app/.profile.d/*.sh; do
  source $file
done

exec "$@"
