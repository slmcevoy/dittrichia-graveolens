#!/bin/bash

# run centrifuge to identify contaminated reads

#/redser4/projects/GVTP/software/centrifuge/centrifuge -p 12 -x /redser4/projects/GVTP/genome/filtering/abvf --report-file centrifuge_abvf_index_ditt_report.tsv --quiet --min-hitlen 50 -q /scratch8/dittrichia/hifiadapterfilt/ditt_hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq 1>cent.o 2>cent.e

#filter contaminated reads

#grep -vw "unclassified" cent.o > ditt_contam_reads_abvf_index.txt

#awk NF=1 ditt_contam_reads_abvf_index.txt > ditt_contam_readids_abvf_index.txt

#sort -u ditt_contam_readids_abvf_index.txt > ditt_contam_readids_abvf_index_uniq.txt

python remove_contams.py

