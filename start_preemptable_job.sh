#!/bin/bash 
PARTITION=gpu-2080ti-preemptable
#FLAGS= 
PYTHONPATH=. srun --job-name="$JOB_NAME" --partition=$PARTITION --cpus-per-task=2 --mem=8G --gres=gpu:1 -- $ROOT_DIR/scripts/run_singularity_server.sh python3 $ROOT_DIR/$PACKAGE_NAME/simulations.py  --project mlp-test  --use-wandb --n-steps 250001 "$@"

