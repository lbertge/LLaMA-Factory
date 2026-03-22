#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/.venv/bin/activate"

echo "=================================================="
echo "Binding-Only SFT Training (Qwen2.5-1.5B)"
echo "Python: $(which python)"
echo "=================================================="

export WANDB_PROJECT="or-llm-binding-sft"

llamafactory-cli train examples/train_binding/binding_1_5B.yaml

echo "=================================================="
echo "Training Complete!"
echo "=================================================="
