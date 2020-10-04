#!/usr/bin/env bash

export SQUAD_DIR=data

function train () {

CUDA_VISIBLE_DEVICES=0 python run_squad.py \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --do_train \
    --do_eval \
    --do_lower_case \
    --train_file $SQUAD_DIR/train.json \
    --predict_file $SQUAD_DIR/dev.json \
    --learning_rate 3e-5 \
    --num_train_epochs 5 \
    --max_seq_length 384 \
    --doc_stride 128 \
    --output_dir ./output/ \
    --per_gpu_eval_batch_size=16  \
    --per_gpu_train_batch_size=16   \
    --save_steps 500

}

function evaluate () {

CUDA_VISIBLE_DEVICES=0 python run_squad.py \
    --model_type bert \
    --model_name_or_path output \
    --do_eval \
    --do_lower_case \
    --predict_file $SQUAD_DIR/test.json \
    --max_seq_length 384 \
    --doc_stride 128 \
    --output_dir ./output/ \
    --per_gpu_eval_batch_size=16

}

train
evaluate
