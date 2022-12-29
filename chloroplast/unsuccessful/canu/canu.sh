#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/canu-2.2/bin

canu \
 -p dittrichia_chloroplast_asm -d ditt_canu_hifi3 \
  -genomeSize=140k \
  -readSamplingCoverage=1000 \
 -pacbio-hifi ../dittreads_lim_asm_mapped.fastq 1>canu3.o 2>canu3.ee
