#!/bin/bash

input="ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.nochloroplast.fasta"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_hap1_o -t 12 1>quast_hap1.o 2>quast_hap1.e

input="ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.nochloroplast.fasta"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_hap2_o -t 12 1>quast_hap2.o 2>quast_hap2.e

