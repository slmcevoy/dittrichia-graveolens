#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/minimap2:/public/groups/meyerlab/software/samtools-1.16.1/bin

#minimap2 -ax map-hifi dittrichia_adapterfilt_default_hap1.fasta ../../hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq.gz -o dittrichia_adapterfilt_asm_adapterfilt_reads.bam 1>minimap.o 2>minimap.e
#samtools sort -@32 -o dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.bam -T tmp.ali dittrichia_adapterfilt_asm_adapterfilt_reads.bam  1>sort.o 2>sort.e
#samtools index dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.bam 
#samtools flagstat dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.bam > dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.flagstat.txt

/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools view -@48 -b -o dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.bam dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.bam "HiC_scaffold_1" "HiC_scaffold_2" "HiC_scaffold_3" "HiC_scaffold_4" "HiC_scaffold_5" "HiC_scaffold_6" "HiC_scaffold_7" "HiC_scaffold_8_MOD" "HiC_scaffold_9"
/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools flagstat dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.bam > dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.flagstat.txt

/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools view -@48 -b -F256 -o dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.F256.bam dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.bam
/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools flagstat dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.F256.bam > dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.F256.flagstat.txt

/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools view -@48 -b -q20 -o dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.F256q20.bam dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.F256.bam
/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools flagstat dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.F256q20.bam > dittrichia_adapterfilt_asm_adapterfilt_reads.sorted.chroms.F256q20.flagstat.txt

