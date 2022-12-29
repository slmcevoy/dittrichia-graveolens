#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/canu-2.2/bin

canu \
 -p dittrichia_chloroplast_asm_raw -d ditt_canu_hifi_raw \
  -genomeSize=140k \
  -readSamplingCoverage=1000 \
 -pacbio-hifi ../dittreadsraw_lim_asm_mapped.fastq 1>canu5.o 2>canu5.e
