#!/bin/bash

python /public/groups/meyerlab/software/LongQC/longQC.py sampleqc -p 24 -x pb-hifi -o longqc_filtered_o ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq 1>longqc.o 2>longqc.e
