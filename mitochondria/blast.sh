#!/bash/bin

#conda activate blast

makeblastdb -in ../gapclose/adapterfilt-default/dittrichia_adapterfilt_default_hap1.fasta  -dbtype nucl -parse_seqids 1>blastmakedb.o 2>blastmakedb.e

blastn -db ../gapclose/adapterfilt-default/dittrichia_adapterfilt_default_hap1.fasta  -query Contigs_1_Dittrichia.fasta -outfmt 6 -out blast_mito_asm_dittichia_gapclose_adapterfilt-default_asm.out 1>blast.o 2>blast.e

#makeblastdb -in h1tg000013l.fasta -dbtype nucl -parse_seqids
#blastn -db h1tg000013l.fasta -query h1tg000036l.fasta -outfmt 6 -out blast13to36.out

#blastn -db limbarda_crithmoides_genome.fasta -query ../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.fa -outfmt 6 -out blast_limbarda_dittrichia_asm_hap2.out 1>blast2.o 2>blast2.e
