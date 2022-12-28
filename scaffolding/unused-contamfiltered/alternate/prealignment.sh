#!/bin/bash

samtools faidx ../assemblies/dittrichia_draft_asm_alt.fasta

cut -f1,2 ../assemblies/dittrichia_draft_asm_alt.fasta.fai > ../assemblies/dittrichia_draft_asm_alt.genome

bwa index ../assemblies/dittrichia_draft_asm_alt.fasta
