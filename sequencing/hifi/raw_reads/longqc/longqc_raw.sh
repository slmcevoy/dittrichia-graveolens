#!/bin/bash

python /public/groups/meyerlab/software/LongQC/longQC.py sampleqc -p 24 -x pb-hifi -o longqc_raw_o m64069_220505_192103.hifi_reads.fastq.gz 1>longqc.o 2>longqc.e
