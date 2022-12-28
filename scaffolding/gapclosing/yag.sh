#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/yagcloser:/public/groups/meyerlab/software/refaligner:/public/groups/meyerlab/software/minimap2:/public/groups/meyerlab/software/asset/bin:/public/home/sumcevoy/.local/bin

#minimap2 --secondary=yes -ax map-hifi ../../scaffolding2-alt/3ddna/dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.fasta ../../hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq.gz | samtools view -hSb - | samtools sort -@5  - > dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.sorted.bam 

#samtools index dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.sorted.bam

#detgaps ../../scaffolding2-alt/3ddna/dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.fasta > hap2.gaps.bed

#python /public/groups/meyerlab/software/yagcloser/yagcloser.py -g ../../scaffolding2-alt/3ddna/dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.fasta -b hap2.gaps.bed -a dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.sorted.bam -o yag_hap2_out -s dittrichia_hap2_gaps

#python /public/groups/meyerlab/software/yagcloser/scripts/update_assembly_edits_and_breaks.py \
    -i ../../scaffolding2-alt/3ddna/dittrichia_adapterfilt_draft_asm_alt_wrapped.FINAL.fasta \
    -o dittrichia_genome_hap2.fasta \
    -e yag_hap2_out/dittrichia_hap2_gaps.edits.txt

#detgaps dittrichia_genome_hap2.fasta > hap2_edited.gaps.bed
