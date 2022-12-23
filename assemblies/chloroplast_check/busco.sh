#!/bin/bash

# conda activate busco

input=ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.nochloroplast.fasta
busco -c 24 -i "$input" -l embryophyta_odb10 -o busco_hap1_o -m geno 1>busco_hap1.o 2>busco_hap1.e

input=ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.nochloroplast.fasta
busco -c 24 -i "$input" -l embryophyta_odb10 -o busco_hap2_o -m geno 1>busco_hap2.o 2>busco_hap2.e
