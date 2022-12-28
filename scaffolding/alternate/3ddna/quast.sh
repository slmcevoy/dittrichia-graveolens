#!/bin/bash

# conda activate quast

input="dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.fasta"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_o -t 16 1>quast.o 2>quast.e

