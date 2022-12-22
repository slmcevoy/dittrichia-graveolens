## HiFi Sequencing

[HiFi sequence tracking sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=330784194)  

Raw reads are archived on redser4:
 /redser4/raw/Meyer_Dittrichia_Hifi/m64069_220505_192103.hifi_reads.fastq.gz

### Raw reads quality control

Raw reads were QC'd with FASTQC v0.11.8  
Script: raw_reads/fastqc/fastqc.sh  
Results: raw_reads/fastqc/ditt_m64069_220505_192103.hifi_reads_fastqc.html and ditt_m64069_220505_192103.hifi_reads_fastqc.zip  
Also QC'd with LongQC v1.2.0c
Script: raw_reads/longqc/longqc.sh
Results: raw_reads/longqc/

### Adapter trimming  

HiFiAdapterFilt v2.0.1 was used to trim HiFi-specific adapters  
Script: hifiadapterfilt/filt.sh  
Stats output: hifiadapterfilt/m64069_220505_192103.hifi_reads.stats  
```
Number of ccs reads: 2433439
Number of adapter contaminated ccs reads: 5 (0.000205471% of total)
Number of ccs reads retained: 2433434 (99.9998% of total)
```
Reads archived: /redser4/projects/dittrichia/reads/hifi/adapter_filtered/ditt_hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq.gz

### Contaminant identification  (not used for filtering)

Centrifuge v1.0.4 was used to detect genes from archaea, bacteria, fungus, and virus. It uses an index built from taxonomy and sequencing in NCBI. Originally, I filtered these sequences with the python script remove_contams.py.  When doing the chloroplast assembly, it was incomplete and I discovered that this had filtered some those out.  I reverted to using the adapter-filtered set instead of this one.
Script: centrifuge/centrifuge.sh  
Contaminant report: centrifuge/centrifuge_abvf_index_ditt_report.tsv  
Reads archived: /redser4/projects/dittrichia/reads/hifi/contam_filtered/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq.gz  
FASTQC of contam-filtered reads: centrifuge/fastqc/  
LongQC of contam-filtered reads: centrifuge/longqc/   
