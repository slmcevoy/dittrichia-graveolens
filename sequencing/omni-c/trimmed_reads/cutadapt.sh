#!/bin/bash

cutadapt -j 32 -b GGTTCGTCCA -B GGTTCGTCCA -o trimmed_ditGra_R1_all.fastq.gz -p trimmed_ditGra_R2_all.fastq.gz ../ditGra_R1_all.fastq.gz ../ditGra_R2_all.fastq.gz 1>cutadapt.o 2>cutadapt.e

