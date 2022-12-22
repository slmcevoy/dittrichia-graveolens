#!/bin/bash

export PATH=$PATH:/public/groups/meyerlab/software/FastQC

for f in *.fastq.gz;
do
VAR=`echo "$f" | awk -F"." '{print$1}'`
echo "$VAR"
mkdir fastqc_"$VAR"_o
fastqc -t 24 --outdir fastqc_"$VAR"_o "$f" 1>fastqc_"$VAR".o 2>fastqc_"$VAR".e
done
