#!/bin/bash

export PATH=$PATH:/public/home/sumcevoy/.local/bin:/public/groups/meyerlab/software:/public/groups/meyerlab/preseq/bin

bwa mem -5SP -T0 -t32 ../assemblies/dittrichia_draft_asm.fasta ../omnic/ditGra_R1_all.fastq.gz ../omnic/ditGra_R2_all.fastq.gz | \
pairtools parse --min-mapq 40 --walks-policy 5unique \
--max-inter-align-gap 30 --nproc-in 32 --nproc-out 32 --chroms-path ../assemblies/dittrichia_draft_asm.genome | \
pairtools sort --tmpdir=/public/groups/meyerlab/tmp --nproc 32|pairtools dedup --nproc-in 32 \
--nproc-out 32 --mark-dups --output-stats stats.txt|pairtools split --nproc-in 32 \
--nproc-out 32 --output-pairs mapped.pairs --output-sam -|samtools view -bS -@32 | \
samtools sort -@32 -o mapped.PT.bam;samtools index mapped.PT.bam
