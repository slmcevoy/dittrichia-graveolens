## Genome Assemblies

### HiFiasm

The directories above contain three different HiFiasm assemblies (v0.16.1-r375). In each directory, there is a script called hifiasm.sh which is the command to assemble.  HiFi reads that were filtered for adapters and contaminants were used.  

1. default - Testing the default parameters. This produces a haploid consensus assembly plus assemblies for each haplotype (hap1 and hap2).     
2. homozygous - testing the -l0 parameter which can be used for homozygous genomes and skips the post-assembly haplotype filtering/organization seen in the default run. Normally this filtering is used to find undercollapsed haplotypes, where copies from both parents have been assembled into separate regions instead of collapsed into a consensus. A consensus haploid assembly plus a file with alternative haplotypes is produced.  The alternative haplotypes are fewer than in default, where haplotype organization helps expand the alternate.
3. homozygousomnic - in addition to -l0, this uses --h1 and --h2 to add omni-c reads.  In this situation, the omni-c reads are used to phase the haplotypes, meaning to organize them by haploid assembly instead of a collapsed consensus (hap1 and hap2). All contigs in a chromosome should end up in the same parental haplotype. Contigs within the same chromosome can be phased (organized by haplotype) consistently, but there is no way to phase chromosomes themselves without parent information.  

The full set of files including output data has been compressed and stored on redser4:

1. /redser4/projects/dittrichia/assemblies/default/dittrichia_hifiasm_default.tar.gz
2. /redser4/projects/dittrichia/assemblies/homozygous/dittrichia_hifiasm_homozygous.tar.gz
3. /redser4/projects/dittrichia/assemblies/homozygousomnic/dittrichia_hifiasm_homozygousomnic.tar.gz

### Assembly QC  

Each assembly directory above also contains scripts used to evaluate the assembly and their report output.  
Side by side stats comparisons are in the (Dittrichia tracking google sheet)[https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=234257980]  

Quast v5.2.0  - quast.sh provides total length, number of contigs, and N50.  

Busco v5.4.3 - busco.sh searches the assembly for highly conserved single copy genes.  The embryophyta_odb10 was used which contains 1614 genes.  Details on missing genes are listed in the google sheet.  

Contig lengths - getlength.py prints the length of each contig.  Useful to see if there are any larger contigs that could progress into pseudomolecules beginning.  
