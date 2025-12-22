#!/bin/bash
set -e

# Configuration
CONFIG_FILE="examples/train_curriculum_v2/full.yaml"

echo "=================================================="
echo "Starting Full Baseline Training (V2)"
echo "Config: ${CONFIG_FILE}"
echo "=================================================="

llamafactory-cli train "${CONFIG_FILE}"

echo "=================================================="
echo "Completed Full Baseline Training"
echo "=================================================="

