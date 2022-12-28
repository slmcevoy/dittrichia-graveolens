#!/bin/bash

#export PATH=$PATH:/public/groups/meyerlab/software/minimap2/

#minimap2 -ax map-hifi ../../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa ../../hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq -o dittreads_homozygousomnic_asm.sam 1>minimap.o 2>minimap.e
#samtools sort -m 5G -@32 -o dittreads_homozygousomnic_asm.bam -T tmp.ali dittreads_homozygousomnic_asm.sam  1>sort.o 2>sort.e
#samtools index dittreads_homozygousomnic_asm.bam

#samtools view -@32 -b dittreads_homozygousomnic_asm.bam "h1tg000036l" > dittreads_homozygousomnic_asm_h1tg000036l.bam
#samtools index dittreads_homozygousomnic_asm_h1tg000036l.bam

#samtools view -@32 -b dittreads_homozygousomnic_asm.bam "h1tg000013l:18450000-18490000" > dittreads_homozygousomnic_asm_h1tg000013l.bam
#samtools index dittreads_homozygousomnic_asm_h1tg000013l.bam

samtools view -@32 -b dittreads_homozygousomnic_asm.bam "h1tg000005l:50000000-50400000" > dittreads_homozygousomnic_asm_h1tg000005l.bam
samtools index dittreads_homozygousomnic_asm_h1tg000005l.bam
