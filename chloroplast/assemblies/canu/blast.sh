#!/bash/bin

#conda activate blast

#makeblastdb -in ../../../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa -dbtype nucl -parse_seqids 1>blastmakedb.o 2>blastmakedb.e

#blastn -db ../../../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa -query dittrichia_chloroplast_asm.contigs.fasta -outfmt 6 -out blast_homozygousomnic_canu_chloroplast_asm.out 1>blast.o 2>blast.e

#awk '{if ($4>=5000)print $0 }' blast_homozygousomnic_canu_chloroplast_asm.out > blast_homozygousomnic_canu_chloroplast_asm.aln_len.out

awk '{if ($4>=500)print $0 }' tig00000077.out > tig00000077_minaln500.out
