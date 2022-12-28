#!/bin/bash

samtools faidx ../assemblies/dittrichia_adapterfilt_draft_asm.fasta

cut -f1,2 ../assemblies/dittrichia_adapterfilt_draft_asm.fasta.fai > ../assemblies/dittrichia_adapterfilt_draft_asm.genome

bwa index ../assemblies/dittrichia_adapterfilt_draft_asm.fasta

samtools faidx ../assemblies/dittrichia_adapterfilt_draft_asm_alt.fasta

cut -f1,2 ../assemblies/dittrichia_adapterfilt_draft_asm_alt.fasta.fai > ../assemblies/dittrichia_adapterfilt_draft_asm_alt.genome

bwa index ../assemblies/dittrichia_adapterfilt_draft_asm_alt.fasta
