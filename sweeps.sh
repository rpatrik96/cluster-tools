#!/bin/bash

for ((i = 1; i <= 4; i++));
do
    ./scripts/wandb_sweep.sh "$@" &
    sleep 0.1
done
