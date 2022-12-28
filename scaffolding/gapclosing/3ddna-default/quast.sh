#!/bin/bash

# conda activate quast

input="dittrichia_adapterfilt_default_hap2.fasta"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_hap2 -t 12 1>quasthap2.o 2>quasthap2.e

