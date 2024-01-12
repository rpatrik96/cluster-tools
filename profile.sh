#!/bin/bash
./export_root_dir.sh
python3 $PACKAGE_NAME/cli.py fit --config configs/trainer.yaml --config configs/synth/moebius.yaml --trainer.profiler=simple --trainer.max_epochs=2