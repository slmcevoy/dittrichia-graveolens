#!/bash/bin

#conda activate blast

#makeblastdb -in limbarda_crithmoides_genome.fasta  -dbtype nucl -parse_seqids 1>blastmakedb.o 2>blastmakedb.e

blastn -db ../../limbarda_crithmoides_genome.fasta -query embplant_pt.scaffolds.graph1.1.path_sequence.fasta -outfmt 6 -out blast_limbarda_dittrichia_flyegetorganelle_asm.out 1>blast.o 2>blast.e

