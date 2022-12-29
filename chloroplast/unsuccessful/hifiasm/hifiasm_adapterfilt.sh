#!/bin/bash

#export PATH=$PATH:/public/groups/meyerlab/software/hifiasm

#hifiasm -o ditt_adpaterfilt_lim_hifiasm_chloroplast.asm -t 24 ../dittreads_adapterfilt_lim_asm_mapped.fastq 1> hifiasm2.o 2> hifiasm2.e


# ditt_adpaterfilt_lim_hifiasm_chloroplast.asm.bp.hap1.p_ctg.gfa
# ditt_adpaterfilt_lim_hifiasm_chloroplast.asm.bp.p_ctg.gfa
# ditt_adpaterfilt_lim_hifiasm_chloroplast.asm.bp.p_utg.gfa

#awk '/^S/{print ">"$2;print $3}' ditt_adpaterfilt_lim_hifiasm_chloroplast.asm.bp.p_ctg.gfa > ditt_adapterfilt_lim_hifiasm_chloroplast.asm.bp.p_ctg.fa
awk '/^S/{print ">"$2;print $3}' ditt_adpaterfilt_lim_hifiasm_chloroplast.asm.bp.hap1.p_ctg.gfa > ditt_adpaterfilt_lim_hifiasm_chloroplast.asm.bp.hap1.p_ctg.fa
