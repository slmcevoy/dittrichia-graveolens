#!/bin/bash

mkdir tmp
ls /redser4/projects/dittrichia/hifireads/m64069_220505_192103.hifi_reads.fastq.gz > FILES
# kmer 21, 16 threads, 64G of memory, counting kmer coverages between 1 and 10000x

$HOME/software/KMC/bin/kmc -k21 -t20 -m80 -ci1 -cs500000 @FILES ditt_kmcdb tmp
$HOME/software/KMC/bin/kmc_tools transform ditt_kmcdb histogram ditt_kmcdb_k21.hist -cx500000

L=$(smudgeplot.py cutoff ditt_kmcdb_k21.hist L)
U=$(smudgeplot.py cutoff ditt_kmcdb_k21.hist U)
echo $L $U # these need to be sane values
# L should be around 20 - 200
# U should be around 500 - 3000
# L and U returned as 16 and 1800

$HOME/software/KMC/bin/kmc_tools transform ditt_kmcdb -ci"$L" -cx"$U" reduce kmcdb_L"$L"_U"$U"
$HOME/software/KMC/bin/smudge_pairs kmcdb_L"$L"_U"$U" kmcdb_L"$L"_U"$U"_coverages.tsv kmcdb_L"$L"_U"$U"_pairs.tsv > kmcdb_L"$L"_U"$U"_familysizes.tsv

smudgeplot.py plot kmcdb_L"$L"_U"$U"_coverages.tsv
