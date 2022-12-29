#!/bin/bash

#/public/home/sumcevoy/miniconda3/envs/merqury/share/merqury/best_k.sh 834927106 1>bestk.o 2>bestk.e

#meryl k=21 count output R1_21.meryl ../omnic/trimmed/trimmed_ditGra_R1_all.fastq.gz 1>meryl1.o 2>meryl1.e
#meryl k=21 count output R2_21.meryl ../omnic/trimmed/trimmed_ditGra_R2_all.fastq.gz 1>meryl2.o 2>meryl2.e
#meryl union-sum output reads_21.meryl *meryl

merqury.sh reads_21.meryl defaultchroms.fasta merqury_out 1>merqury.o 2>merqury.e
