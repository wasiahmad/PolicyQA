#!/usr/bin/env bash

FILELIST=(config.json pytorch_model.bin vocab.txt)
URL_PREFIX=https://s3.amazonaws.com/models.huggingface.co/bert/google/bert_uncased

declare -A bert_sizes
bert_sizes['tiny']='L-2_H-128_A-2'
bert_sizes['mini']='L-4_H-256_A-4'
bert_sizes['small']='L-4_H-512_A-8'
bert_sizes['medium']='L-8_H-512_A-8'
bert_sizes['base']='L-12_H-768_A-12'
bert_sizes['large']='L-24_H-768_A-12'

function download () {
    for bert in tiny mini small medium base; do
        OUTDIR=bert_${bert}_uncased
        if [[ ! -d $OUTDIR ]]; then
            mkdir $OUTDIR
            for FILE in "${FILELIST[@]}"; do
                wget -O ${OUTDIR}/${FILE} ${URL_PREFIX}_${bert_sizes[$bert]}/${FILE}
            done
        fi
    done

    URL_PREFIX=https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-uncased
    OUTDIR=bert_large_uncased
    if [[ ! -d $OUTDIR ]]; then
        mkdir $OUTDIR
        for FILE in "${FILELIST[@]}"; do
            wget -O ${OUTDIR}/${FILE} ${URL_PREFIX}-${FILE}
        done
    fi
}

download
