#!/bin/bash

#samtools faidx ../assemblies/dittrichia_draft_asm.fasta

cut -f1,2 ../assemblies/dittrichia_draft_asm.fasta.fai > ../assemblies//dittrichia_draft_asm.genome

#bwa index ../assemblies/dittrichia_draft_asm.fasta
