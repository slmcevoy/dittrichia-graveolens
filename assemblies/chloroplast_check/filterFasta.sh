#!/bin/bash

python /public/groups/meyerlab/software/createFasta.py --fasta ../ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa --nameList headers_no_chloroplast.txt --out ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.nochloroplast.fasta 

python /public/groups/meyerlab/software/createFasta.py --fasta ../ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.fa --nameList headers_no_chloroplast_alt.txt --out ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.nochloroplast.fasta
