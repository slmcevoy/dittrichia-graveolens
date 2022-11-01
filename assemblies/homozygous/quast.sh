#!/bin/bash

#input="ditt_contamfiltered_hifiasm_l0.asm.bp.p_ctg.fa"
#python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_o -t 12 1>quast.o 2>quast.e

input="ditt_contamfiltered_hifiasm_l0.asm.bp.a_ctg.fa"
python /public/groups/meyerlab/software/quast-5.2.0/quast.py "$input" --large -o quast_alt_o -t 12 1>quast_alt.o 2>quast_alt.e
