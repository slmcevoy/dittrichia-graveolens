#!/bin/bash

#export PATH=$PATH:/home/sumcevoy/software/hifiasm

#hifiasm -o ditt_contamfiltered_hifiasm.asm -t 24 /scratch8/dittrichia/hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq 1> hifiasm.o 2> hifiasm.e

#awk '/^S/{print ">"$2;print $3}' ditt_contamfiltered_hifiasm.asm.bp.p_ctg.gfa > ditt_contamfiltered_hifiasm.asm.bp.p_ctg.fa


awk '/^S/{print ">"$2;print $3}' ditt_contamfiltered_hifiasm.asm.bp.hap1.p_ctg.gfa > ditt_contamfiltered_hifiasm.asm.bp.hap1.p_ctg.fa
awk '/^S/{print ">"$2;print $3}' ditt_contamfiltered_hifiasm.asm.bp.hap2.p_ctg.gfa > ditt_contamfiltered_hifiasm.asm.bp.hap2.p_ctg.fa
