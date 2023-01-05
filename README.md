# Dittrichia graveolens

## Reference genome

[Data tracking google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g)

[Manuscript](https://docs.google.com/document/d/1MNmYusk89dXegETUHbGTfY9m631gyJSp/edit) - [Original template](https://github.com/slmcevoy/gaviota-tarplant/blob/main/manuscript/GenomeResourceTemplateCCGP.docx)

### Size estimation

[K-mer based estimates](genome-size/README.md) - 831 Mbp, 53% repeats, and heterozygosity of 0.06.

### Sequencing

[HiFi raw and filtered summaries](sequencing/hifi/) - Using 835 Mbp as the genomize size, raw read coverage is 41x.

[Omni-C summaries](sequencing/omnic) - 5 libraries for a total of 15x read coverage

### Final Assembly 

[Draft assembly trials](assemblies/) - hifiasm tests, chloroplast scaffold removal  
[Final assemblies](scaffolding/) - scaffolding trials, gap closing, header renaming  

 *Primary assembly*  
 Total length: 835 Mbp  
 Pseudomolecules: 98.1% sequence organized into 9  
 Number of scaffolds: 261  
 N50: 96.9 Mb  
 BUSCO embryophyta_odb10: C:98.8%[S:95.9%,D:2.9%],F:0.6%,M:0.6%   

 *Alternate assembly*  
 Total length: 824 Mbp  
 Pseudomolecules: 97.8% sequence organized into 9  
 Number of scaffolds: 292  
 N50: 96.4 Mb  
 BUSCO embryophyta_odb10: C:98.6%[S:95.7%,D:2.9%],F:0.6%,M:0.8%  

#### Organelle genomes

[Chloroplast genome](chloroplast/)  
[Mitochondrial genome](mitochondria)

