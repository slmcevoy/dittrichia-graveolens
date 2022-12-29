#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/hifiasm

hifiasm -o ditt_lim_hifiasm_chloroplast.asm -t 24 ../dittreads_lim_asm_mapped_F256_q20.fastq 1> hifiasm.o 2> hifiasm.e

#awk '/^S/{print ">"$2;print $3}' ditt_lim_hifiasm_chloroplast.asm.bp.p_ctg.gfa > ditt_lim_hifiasm_chloroplast.asm.bp.p_ctg.fa
