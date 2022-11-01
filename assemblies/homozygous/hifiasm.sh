#!/bin/bash

#export PATH=$PATH:/public/groups/meyerlab/software/hifiasm/

#hifiasm -o ditt_contamfiltered_hifiasm_l0.asm -t 24 -l0 /public/groups/meyerlab/ditt/hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq 1> hifiasm.o 2> hifiasm.e

#awk '/^S/{print ">"$2;print $3}' ditt_contamfiltered_hifiasm_l0.asm.bp.p_ctg.gfa > ditt_contamfiltered_hifiasm_l0.asm.bp.p_ctg.fa
awk '/^S/{print ">"$2;print $3}' ditt_contamfiltered_hifiasm_l0.asm.bp.a_ctg.gfa > ditt_contamfiltered_hifiasm_l0.asm.bp.a_ctg.fa
