#!/bin/bash

# conda activate flye
# but that makes building gfa at contig step really long  https://github.com/fenderglass/Flye/issues/428
# switched to v2.9 for fix

export PATH=$PATH:/public/groups/meyerlab/software/Flye/bin

#flye --pacbio-hifi ../dittreads_lim_asm_mapped_F256_q20.fastq -o flye_chloroplast_q20_o -g 140k -t 32 1>flye2.o 2>flye2.e
#flye --pacbio-hifi ../dittreadsraw_lim_asm_mapped.fastq -o flye_chloroplast_raw -g 140k -t 32 1>flye3.o 2>flye3.e
flye --pacbio-hifi ../dittreads_adapterfilt_lim_asm_mapped.fastq -o flye_chloroplast_adapterfilt -g 140k -t 32 1>flye4.o 2>flye4.e
