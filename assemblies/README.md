## Genome Assemblies

### HiFiasm

The directories above contain four different HiFiasm assemblies (v0.16.1-r375) which are described below. In each directory, there is a script called hifiasm.sh which is the command to assemble. 

#### Selected draft assembly (contigs)  
Created with adapter-filtered reads  

hom_omnic_adapterfilt - uses -l0 to skip post-assembly haplotype organization and --h1/--h2 for phasing haplotypes with Omni-C reads.  
Output files: ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa, ditt_adapterfilt_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.fa  
Full output and QC files archived in: /redser4/projects/dittrichia/assemblies/hom_omnic_adapterfilt/hom_omnic_adapterfilt.tar.gz  

#### Test draft assemblies  
Created with adapter- and contaminant-filtered reads.  
1. default - Testing the default parameters. This produces a haploid consensus assembly plus assemblies for each haplotype (hap1 and hap2).     
2. homozygous - testing the -l0 parameter which can be used for homozygous genomes and skips the post-assembly haplotype filtering/organization seen in the default run. Normally this filtering is used to find undercollapsed haplotypes, where copies from both parents have been assembled into separate regions instead of collapsed into a consensus. A consensus haploid assembly plus a file with alternative haplotypes is produced.  The alternative haplotypes are fewer than in default, where haplotype organization helps expand the alternate.
3. homozygousomnic - in addition to -l0, this uses --h1 and --h2 to add omni-c reads.  In this situation, the omni-c reads are used to phase the haplotypes, meaning to organize them by haploid assembly instead of a collapsed consensus (hap1 and hap2). All contigs in a chromosome should end up in the same parental haplotype. Contigs within the same chromosome can be phased (organized by haplotype) consistently, but there is no way to phase chromosomes themselves without parent information.  

The full set of files including output data has been compressed and stored on redser4:

1. /redser4/projects/dittrichia/assemblies/default/dittrichia_hifiasm_default.tar.gz
2. /redser4/projects/dittrichia/assemblies/homozygous/dittrichia_hifiasm_homozygous.tar.gz
3. /redser4/projects/dittrichia/assemblies/homozygousomnic/dittrichia_hifiasm_homozygousomnic.tar.gz

### Draft assembly chloroplast filtering  

BLAST v2.13.0 was used to map the Limbarda crithmoides chloroplast genome to the draft assembly for each haplotype. Contig 36 in the primary assembly and contig 37 in the alternate were identified as primarily chloroplast and removed.  
Script: chloroplast_check/blast.sh, filterfasta.sh, headers_no_chloroplast.txt, headers_no_chloroplast_alt.txt  
Output: chloroplast_check/blast_limbarda_dittrichia_adapterfilt_asm_hap1.5000.out, blast_limbarda_dittrichia_adapterfilt_asm_hap2.5000.out  

[Also see details of read alignment examination across matching regions](chloroplast#identification-of-chloroplast-sequence-in-nuclear-assembly)   

The filtered assemblies were QC'd with BUSCO and Quast for final contig statistics.
Scripts: chloroplast_check/quast.sh, busco.sh  
Output: chloroplast_check/quast_hap1, quast_hap2, busco_hap1_o, busco_hap2_o   

Draft fasta archived in /redser4/projects/dittrichia/reads/hifi/chloroplast_check/  

### Assembly QC  

Each assembly directory above also contains scripts used to evaluate the assembly and their report output.  
Side by side stats comparisons are in the [Dittrichia tracking google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=234257980)  

Quast v5.2.0  - quast.sh provides total length, number of contigs, and N50.  

Busco v5.4.3 - busco.sh searches the assembly for highly conserved single copy genes.  The embryophyta_odb10 was used which contains 1614 genes.  Details on missing genes are listed in the google sheet.  

Contig lengths - getlength.py prints the length of each contig.  Useful to see if there are any larger contigs that could progress into pseudomolecules beginning.  
