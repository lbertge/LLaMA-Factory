#!/bin/bash

# Script to run progressive curriculum v3 training (stages 1-9)
# Each stage uses the previous stage's checkpoint as the starting model

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting curriculum v3 progressive training..."
echo "=============================================="

for stage in 2 3 4 5 6 7 8 9; do
    echo ""
    echo ">>> Training Stage $stage <<<"
    echo "=============================================="
    llamafactory-cli train "$SCRIPT_DIR/stage_${stage}.yaml"
    echo "Stage $stage completed!"
done

echo ""
echo "=============================================="
echo "All stages completed successfully!"
