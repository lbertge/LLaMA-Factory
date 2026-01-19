#!/bin/bash

# Script to run full curriculum v3 training (all stages 1-9 combined)

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting curriculum v3 full training..."
echo "=============================================="
llamafactory-cli train "$SCRIPT_DIR/full.yaml"
echo ""
echo "=============================================="
echo "Full training completed successfully!"
