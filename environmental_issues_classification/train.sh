#!/bin/bash

TASK_NAME="env_issues" 
TIME=$(date +"%Y%m%d-%H%M")
MODEL_TYPE=bert
if [ "$MODEL_TYPE" = "bert" ]; then MODEL_NAME="$MODEL_TYPE-base-uncased"; fi
MAX_SEQ_LEN=512
SEED=100
TRAIN_EPOCH=10
LR=2e-5
MODEL_SETTING="$TIME"_"$MODEL_TYPE"_"maxseqlen$MAX_SEQ_LEN"_"seed$SEED"_"epoch$TRAIN_EPOCH"_"lr$LR"_"$TASK_NAME"
OUTPUT_DIR="models"_"$MODEL_TYPE/$TASK_NAME/$MODEL_SETTING"
DATA_DIR="data/$TASK_NAME"

python main.py \
--model_type $MODEL_TYPE \
--model_name_or_path $MODEL_NAME \
--model_setting $MODEL_SETTING \
--seed $SEED \
--task_name $TASK_NAME \
--do_train \
--do_eval \
--data_dir $DATA_DIR \
--output_dir $OUTPUT_DIR \
--learning_rate $LR \
--num_train_epochs $TRAIN_EPOCH \
--max_choice 15 \
--max_seq_length $MAX_SEQ_LEN \
--encode_type sent_def \
--per_gpu_eval_batch_size 1 \
--per_gpu_train_batch_size 1 \
--gradient_accumulation_steps 8 \
--overwrite_output \
--overwrite_cache

