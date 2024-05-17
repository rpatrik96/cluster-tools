#!/bin/bash

./export_root_dir.sh

PARTITION=gpu-2080ti-preemptable
#FLAGS= 
PYTHONPATH=. srun --time=45 --job-name="$JOB_NAME" --partition=$PARTITION --cpus-per-task=2 --mem=8G --gres=gpu:1 -- $ROOT_DIR/scripts/run_singularity_server.sh python3 $ROOT_DIR/$PACKAGE_NAME/cli.py fit --config configs/trainer.yaml --config configs/synth/moebius.yaml  "$@"

