#!/bin/bash

input="ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_hap1_o -t 12 1>quast_hap1.o 2>quast_hap1.e

input="ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.fa"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_hap2_o -t 12 1>quast_hap2.o 2>quast_hap2.e

input="ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.p_ctg.fa"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_p_o -t 12 1>quast_p.o 2>quast_p.e
