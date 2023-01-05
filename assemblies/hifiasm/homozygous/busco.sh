#!/bin/bash

# conda activate busco

#input=ditt_contamfiltered_hifiasm_l0.asm.bp.p_ctg.fa
#busco -c 16 -i "$input" -l embryophyta_odb10 -o busco_o -m geno 1>busco.o 2>busco.e

input=ditt_contamfiltered_hifiasm_l0.asm.bp.a_ctg.fa
busco -c 32 -i "$input" -l embryophyta_odb10 -o busco_alt_o -m geno 1>busco_alt.o 2>busco_alt.e
