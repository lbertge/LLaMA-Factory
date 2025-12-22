#!/bin/bash
set -e

# Configuration
STAGES=10
CONFIG_DIR="examples/train_curriculum"

# Function to run training for a stage
run_stage() {
    local stage=$1
    local config_file="${CONFIG_DIR}/stage_${stage}.yaml"
    
    echo "=================================================="
    echo "Starting Stage ${stage} Training"
    echo "Config: ${config_file}"
    echo "=================================================="
    
    llamafactory-cli train "${config_file}"
    
    echo "=================================================="
    echo "Completed Stage ${stage}"
    echo "=================================================="
    echo ""
}

for ((i=1; i<=STAGES; i++)); do
    run_stage $i
done

echo "Curriculum Training Complete!"

