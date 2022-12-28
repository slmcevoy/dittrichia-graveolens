#!/bin/bash

# conda activate busco

input=dittrichia_draft_asm_alt_wrapped.FINAL.fasta
busco -c 24 -i "$input" -l embryophyta_odb10 -o busco_o -m geno 1>busco.o 2>busco.e
