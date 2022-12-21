#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/FastQC

fastqc -t 16 --outdir fastqc_hificontams_o ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq 1>fastqc.o 2>fastqc.e
