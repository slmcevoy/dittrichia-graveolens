#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/MUMmer3.23:/public/groups/meyerlab/software/dot

nucmer ../limbarda_crithmoides_genome.fasta ditt_lim_hifiasm_chloroplast.asm.bp.p_ctg.fa 1>nucmer.o 2>nucmer.e

# conda activate busco for numpy
python /public/groups/meyerlab/software/dot/DotPrep.py --delta out.delta
