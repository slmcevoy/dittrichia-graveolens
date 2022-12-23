#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/hifiasm/

hifiasm -o ditt_adapterfilt_hifiasm_l0_omnic.asm -t 36 -l0 --h1 /public/groups/meyerlab/ditt/omnic/ditGra_R1_all.fastq.gz --h2 /public/groups/meyerlab/ditt/omnic/ditGra_R2_all.fastq.gz /public/groups/meyerlab/ditt/hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq.gz 1> hifiasm.o 2> hifiasm.e

awk '/^S/{print ">"$2;print $3}' ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.gfa > ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa

awk '/^S/{print ">"$2;print $3}' ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.gfa > ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.fa

awk '/^S/{print ">"$2;print $3}' ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.p_ctg.gfa > ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.p_ctg.fa
