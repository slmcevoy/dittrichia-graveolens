#!/bash/bin

#conda activate blast

makeblastdb -in limbarda_crithmoides_genome.fasta  -dbtype nucl -parse_seqids 1>blastmakedb.o 2>blastmakedb.e

blastn -db limbarda_crithmoides_genome.fasta -query ../ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa -outfmt 6 -out blast_limbarda_dittrichia_adapterfilt_asm_hap1.out 1>blast.o 2>blast.e

blastn -db limbarda_crithmoides_genome.fasta -query ../ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.fa -outfmt 6 -out blast_limbarda_dittrichia_adapterfilt_asm_hap2.out 1>blast2.o 2>blast2.e

awk '{if ($4>=5000)print $0 }' blast_limbarda_dittrichia_adapterfilt_asm_hap1.out  > blast_limbarda_dittrichia_adapterfilt_asm_hap1.5000.out
awk '{if ($4>=5000)print $0 }' blast_limbarda_dittrichia_adapterfilt_asm_hap2.out  > blast_limbarda_dittrichia_adapterfilt_asm_hap2.5000.out
