## Dittrichia chloroplast assembly

Initial attempts were made with GetOrganelle using get_organelle_from_assembly.py and the assembly graph output from HiFiasm.  Results were very fragmented.  
Script: assemblies/getorganelle/getorg.sh

HiFi reads were then aligned to the chloroplast assembly from the closest available relative Limbarda chrithmoids. Unmapped reads (-F 4) and secondary aligments (-F 256) were filtered from the bam output.
Script: minimap.sh  
Remaining read ids were used to subset the filtered HiFi reads initially used for the nuclear assembly.  
Script: seqtk.sh  
This subset of reads was used to try chloroplast assembly using Canu, HiFiasm, and Flye.  Because HiFiasm and Flye output assembly graphs, those were also run through GetOrganelle.  Results from Canu and Flye/GetOrganelle both produce assemblies with four contigs fairly close to matching the Limbarda assembly.  Further work would need to be done to achieve a circular assembly.  

[Google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=1445097887)  

### Dittrichia HiFi aligned to Limbarda chrithmoides chloroplast
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/chloroplast/dittreads_limbarda_chloroplast.png">

## Identification of chloroplast sequence in nuclear assembly

The Limbarda chloroplast assembly was mapped to the Dittrichia nuclear assembly with blastn.  Three more substantial regions matched, indicating the potential for chloroplast mis-assembled in the nuclear assembly. HiFi reads used for assembly were aligned to the assembly to check for issues with mapping or coverage in IGV.  
Scripts: ../alignments/minimap/self/minimap.sh, ../alignments/minimap/self/filterFasta.sh, ../alignments/minimap/self/createFasta.py   

### Dittrichia assembly contig 36
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/chloroplast/h1tg000036l-start.png">
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/chloroplast/h1tg000036l-mid.png">
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/chloroplast/h1tg000036l-end.png">

### Dittrichia assembly contig 5
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/chloroplast/h1tg000005l.png">
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/chloroplast/h1tg000005lscrolldown.png">

### Dittrichia assembly contig 13
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/chloroplast/h1tg000013l.png">
