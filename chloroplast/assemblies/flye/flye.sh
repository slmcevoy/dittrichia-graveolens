#!/bin/bash

# conda activate flye
# but that makes building gfa at contig step really long  https://github.com/fenderglass/Flye/issues/428
# switched to v2.9 for fix

export PATH=$PATH:/public/groups/meyerlab/software/Flye/bin

flye --pacbio-hifi ../dittreads_lim_asm_mapped.fastq -o flye_chloroplast_o -g 140k -t 32 1>flye.o 2>flye.e

