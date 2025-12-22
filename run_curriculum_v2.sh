#!/bin/bash
set -e

# Configuration
STAGES=10
CONFIG_DIR="examples/train_curriculum_v2"

# Function to run training for a stage
run_stage() {
    local stage=$1
    local config_file="${CONFIG_DIR}/stage_${stage}.yaml"
    
    echo "=================================================="
    echo "Starting Stage ${stage} Training (V2)"
    echo "Config: ${config_file}"
    echo "=================================================="
    
    llamafactory-cli train "${config_file}"
    
    echo "=================================================="
    echo "Completed Stage ${stage}"
    echo "=================================================="
    echo ""
}

# Run all stages sequentially

for ((i=1; i<=STAGES; i++)); do
    run_stage $i
done

echo "Curriculum V2 Training Complete!"

