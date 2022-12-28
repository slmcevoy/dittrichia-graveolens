#!/bin/bash

# ln -s /public/groups/meyerlab/software/3d-dna .

./3d-dna/run-asm-pipeline.sh dittrichia_adapterfilt_draft_asm_alt_wrapped.fasta ../aligned/merged_nodups.txt 1>3ddna.o 2>3ddna.e
