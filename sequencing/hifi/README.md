## HiFi Sequencing

Raw reads are archived on redser4:
 /redser4/raw/Meyer_Dittrichia_Hifi/m64069_220505_192103.hifi_reads.fastq.gz

### Raw reads quality control

Raw reads were QC'd with FASTQC v0.11.8  
Script: fastqc.sh  
Results: ditt_m64069_220505_192103.hifi_reads_fastqc.html and ditt_m64069_220505_192103.hifi_reads_fastqc.zip  

### Adapter trimming  

HiFiAdapterFilt v2.0.1 was used to trim HiFi-specific adapters  
Script: hifiadapterfilt/filt.sh  
Stats output: hifiadapterfilt/m64069_220505_192103.hifi_reads.stats  
Output fastq - used for next step but not archived  

### Contaminant filtering  

Centrifuge v1.0.4 was used to detect genes from archaea, bacteria, fungus, and virus. It uses an index built from taxonomy and sequencing in NCBI. Sequences identified were filtered with the python script remove_contams.py.  This is the final set of sequences used for assembly.  
Script: centrifuge/centrifuge.sh  
Contaminant report: centrifuge_abvf_index_ditt_report.tsv  
Output fastq compressed and saved on redser4  

Processed reads are archived on redser4:
 /redser4/projects/dittrichia/hifireads/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq.gz

### Trimmed and filtered read QC  

FASTQC, similar to raw reads  
Results: ditt_m64069_220505_192103.hifi_reads.filt.abvf_fastqc.html and ditt_m64069_220505_192103.hifi_reads.filt.abvf_fastqc.zip  
