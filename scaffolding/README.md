## Genome Scaffolding

### Scaffolding

[Scaffolding google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=1923998588)  

Draft assemblies were scaffolded as described in the Genome Assembly Cookbook available at https://www.dnazoo.org/methods  

Originally, I scaffolded the draft assemblies, primary and alternate, that were created with the contaminant-filtered reads.  After attempting to assemble the chloroplast, I realized some chloroplast sequence had been filtered out as contaminant.  I reassembled draft assemblies using the reads before this filtering step and these scaffolded assemblies were more complete.  

Archived files from final draft assemblies:  
/redser4/genomes/Dittrichia_graveolens/dittrichia_primary_genome.fasta.gz
/redser4/genomes/Dittrichia_graveolens/dittrichia_alternate_genome.fasta.gz

Archived files from unused contaminant filtered draft assemblies:  
/redser4/projects/dittrichia/scaffolding/unused-contamfilt  

Scripts and small output files from all assemblies  are provided in the directories above.  

Scaffolding steps:  

1. Prepare BWA (v0.7.17-r1188) index for alignment and genome index (.fai, samtools v1.16.1) and coordinates file (.genome).  
prealignment.sh  

2. Juicer v1.6 will create the alignment and filter for non-PCR duplicate pairs. This calls juicer_tools v2.20.00
juicer.sh  
Output for next step: merged_nodups.txt  

3. 3D-DNA (v180922) will use merged_nodups.txt and the genome files for scaffolding

* First the genome must be converted from multi-line to single-line (wrapped).  
fixwrap.sh  

* 3ddna.sh - creates *.FINAL.assembly, *.final.hic for visualization, and a *.FINAL.fasta file.  
Many intermediate files are also output which can be useful for adjusting parameters  
I tested both default paramters and also -r0 which eliminates in the initial two rounds of misjoin correction.  The results were very similar according to assembly evaluation statistics, but the one created with default parameters was slightly better in terms of QV score in Merqury.  
 
4. *.FINAL.assembly and *.FINAL.hic were downloaded to my laptop for visualization in JuiceBox v1.11.08.  It cannot be done on the servers because it requires a GUI.  

The alternate assembly was scaffolded similarly.  

### Gap Closing  

[Gap closing google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=1036560134)  

YAGCloser (commit 0e34c3b) was used with HiFi reads.  One gap was closed in the primary assembly and one in the alternate.  
Assemblies and other output archived in /redser4/projects/dittrichia/gapclosing/adapterfilt-default  

The 3ddna-0rounds assembly did not have any closed gaps, but the scripts and output are archived: /redser4/projects/dittrichia/gapclosing/unused-0rounds  

The original contaminant-filtered assemblies are in: /redser4/projects/dittrichia/gapclosing/unused-contamfiltered  

### Mitochondrial sequence filtering

At this point, the mitochondria was assembled.  BLAST v2.13.0 was used to identify this in the nuclear genome.  It was found to be complete in one contig which was removed from the final assembly.  
blast.sh  

It was found to be complete in one contig which was removed from the final assembly.
filterFasta.sh 

### Assembly Evaluation  

[Alignment google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=2020405914)  
[Merqury google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=1688699288)  

The 'adapterfilt-default' assembly proved to be slightly better than 'adapterfilt-0rounds' and both of these are more complete than 'contamfilt' according to the methods below.  

Each assembly directory above also contains scripts used to evaluate the assembly and their report output.
Side by side stats comparisons are in the [Dittrichia tracking google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=234257980)

Quast v5.2.0  - quast.sh provides total length, number of contigs, and N50.

Busco v5.4.3 - busco.sh searches the assembly for highly conserved single copy genes.  The embryophyta_odb10 was used which contains 1614 genes.  Details on missing genes are listed in the google sheet.

Contig lengths - getlength.py prints the length of each contig.  Useful to see if there are any larger contigs that could progress into pseudomolecules beginning.

Minimap2 v2.24-r1122 - reads used to construct the assembly should corrently map back to the assembly.  
Archived: /redser4/projects/dittrichia/alignments/assembly_reads  

Merqury v1.3 (requires meryl v1.3) - compares kmers between the reads and the assembly for assembly completeness and quality.  
Scripts: assembly_evaluation/meryl.sh assembly_evaluation/default/merqury.sh  


### Scaffold renaming

Script: rename.sh 
