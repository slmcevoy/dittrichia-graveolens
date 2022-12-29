### Mitochondrial Genome Assembly

[Mitochondria google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=1858085821)  

Existing short read Illumina data from sample CEJES6B739_S115 was used to construct the inital mito genome in Novoplasty.  A chloroplast genome is required as input, so the chloroplast assembled as a part of this project was used.  A seed gene is also required, so Cox1 from GetOrganelleDB was used.

Scripts:  
novoplasty.sh  
config.txt  
cox.fasta  

Output: log_Dittrichia.txt

All related files archived at: /redser4/projects/dittrichia/organelles/mitochondria/novoplasty.tar.gz
Within that tar, Contigs_1_Dittrichia.fasta is the genome.

Blast found this as a contig within the nuclear genome, so that is a second mito genome.  
Scripts: blast.sh  
Output: blast_mito_asm_dittichia_gapclose_adapterfilt-default_asm.out  
