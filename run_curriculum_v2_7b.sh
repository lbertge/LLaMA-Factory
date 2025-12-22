#!/bin/bash
set -e

# Configuration
STAGES=10
CONFIG_DIR="examples/train_curriculum_v2_7b"

# Function to run training for a stage
run_stage() {
    local stage=$1
    local config_file="${CONFIG_DIR}/stage_${stage}.yaml"
    
    echo "=================================================="
    echo "Starting Stage ${stage} Training (V2, 7B)"
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

echo "Curriculum V2 Training (7B) Complete!"



# Configuration
CONFIG_FILE="examples/train_curriculum_v2_7b/full.yaml"

echo "=================================================="
echo "Starting Full Baseline Training (V2, 7B)"
echo "Config: ${CONFIG_FILE}"
echo "=================================================="

llamafactory-cli train "${CONFIG_FILE}"

echo "=================================================="
echo "Completed Full Baseline Training (V2, 7B)"
echo "=================================================="

