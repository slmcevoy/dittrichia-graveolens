#!/bin/bash

# conda activate busco

input=dittrichia_adapterfilt_default_hap2.fasta
busco -c 32 -i "$input" -l embryophyta_odb10 -o busco_hap2_o -m geno 1>busco2.o 2>busco2.e
