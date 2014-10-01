#!/usr/bin/env bash

delay_value=$(psql --tuples-only \
    -c "SELECT round(extract(epoch from (now() - pg_last_xact_replay_timestamp())))" | \
    perl -p -e "s/(\n|\s)+//")
sudo gmetric --name=pg_slave_delay \
             --value=$delay_value \
             --type=int16 \
             --units=Seconds
