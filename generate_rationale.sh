# conda activate instructrag

export DATASET=ASQA
export CACHE_DIR=/p/llmresearch/huggingface/hub

CUDA_VISIBLE_DEVICES=0 python src/inference.py \
  --dataset_name $DATASET \
  --model_name_or_path meta-llama/Meta-Llama-3-8B-Instruct \
  --n_docs 5 \
  --output_dir dataset/${DATASET}\
  --cache_dir $CACHE_DIR \
  --do_rationale_generation \