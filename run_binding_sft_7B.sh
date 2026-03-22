#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/.venv/bin/activate"

echo "=================================================="
echo "Binding-Only SFT Training (Qwen2.5-7B)"
echo "Python: $(which python)"
echo "=================================================="

export WANDB_PROJECT="or-llm-binding-sft"
export FORCE_TORCHRUN=1

llamafactory-cli train examples/train_binding/binding_7B.yaml

echo "=================================================="
echo "Training Complete!"
echo "=================================================="
