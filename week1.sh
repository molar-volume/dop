#!/bin/bash
SOURCE_DIRECTORY=$1

OUTPUT_NAME="waveform_$(date +%s).json"
python3 list.py $1 "$OUTPUT_NAME"
mkdir sync_dir
mv "$OUTPUT_NAME" sync_dir
rsync -avz sync_dir/ "$2:$3"
