#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/minimap2/

#initial tests from contaminant filtered reads
#minimap2 -ax map-hifi limbarda_crithmoides_genome.fasta -o dittreads_lim_asm.sam ../hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq 1>minimap.o 2>minimap.e

#samtools sort -m 5G -o dittreads_lim_asm.bam -T tmp.ali dittreads_lim_asm.sam 1>sort.o 2>sort.e
#samtools index dittreads_lim_asm.bam

#samtools view -b -F 4 dittreads_lim_asm.bam > dittreads_lim_asm_mapped.bam
#samtools index dittreads_lim_asm_mapped.bam
#samtools view -h -o dittreads_lim_asm_mapped.sam dittreads_lim_asm_mapped.bam

#samtools view -h -F 256 -o dittreads_lim_asm_mapped_F256.sam dittreads_lim_asm_mapped.bam 
#samtools view -h -q 20 -o dittreads_lim_asm_mapped_F256_q20.sam dittreads_lim_asm_mapped_F256.sam

# correct reads - adapter filtered only

minimap2 -ax map-hifi limbarda_crithmoides_genome.fasta -o dittreads_adapterfilt_lim_asm.sam /public/groups/meyerlab/ditt/hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq.gz 1>minimap.o 2>minimap.e

samtools sort -@32 -o dittreads_adapterfilt_lim_asm.bam -T tmp.ali dittreads_adapterfilt_lim_asm.sam 1>sort.o 2>sort.e
samtools view -F4 -q20 -o dittreads_adapterfilt_lim_asm.sam dittreads_adapterfilt_lim_asm.bam 
