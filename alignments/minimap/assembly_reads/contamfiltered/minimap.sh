#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/yagcloser:/public/groups/meyerlab/software/refaligner:/public/groups/meyerlab/software/minimap2:/public/groups/meyerlab/software/asset/bin:/public/home/sumcevoy/.local/bin:/public/groups/meyerlab/software/samtools-1.16.1/bin

/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools view -b -o hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.bam hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.bam "HiC_scaffold_1" "HiC_scaffold_2" "HiC_scaffold_3" "HiC_scaffold_4" "HiC_scaffold_5" "HiC_scaffold_6" "HiC_scaffold_7" "HiC_scaffold_8" "HiC_scaffold_9" 1>sam1.o 2>sam2.e
/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools flagstat hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.bam > hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.flagstat.txt

/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools view -b -F256 -o hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.F256.bam hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.bam 11>sam2.o 2>sam2.e
/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools flagstat hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.F256.bam > hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.F256.flagstat.txt

/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools view -b -q20 -o hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.F256q20.bam hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.F256.bam 1>sam3.o 2>sam3.e
/public/groups/meyerlab/software/samtools-1.16.1/bin/samtools flagstat hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.F256q20.bam > hifi_contams_dittrichia_draft_asm_wrapped.FINAL.sorted.chroms.F256q20.flagstat.txt
