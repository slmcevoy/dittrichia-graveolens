#!/bash/bin

#cut -f1 dittreads_lim_asm_mapped.sam > dittreads_lim_asm_mapped_readids.txt
#cut -f1 dittreads_lim_asm_mapped_F256.sam > dittreads_lim_asm_mapped_F256_readids.txt
#cut -f1 dittreads_lim_asm_mapped_F256_q20.sam > dittreads_lim_asm_mapped_F256_q20_readids.txt
#sort -u dittreads_lim_asm_mapped_F256_q20_readids.txt > dittreads_lim_asm_mapped_F256_q20_readids.uniq.txt

#cut -f1 dittreadsraw_lim_asm_mapped.sam > dittreadsraw_lim_asm_mapped_readids.txt
#sort -u dittreadsraw_lim_asm_mapped_readids.txt > dittreadsraw_lim_asm_mapped_readids.uniq.txt

#cut -f1 dittreadsraw_lim_asm_mapped_w256.sam > dittreadsraw_lim_asm_mapped_w256_readids.txt
#sort -u dittreadsraw_lim_asm_mapped_w256_readids.txt > dittreadsraw_lim_asm_mapped_w256_readids.uniq.txt

cut -f1 dittreads_adapterfilt_lim_asm.sam > dittreads_adapterfilt_lim_asm_readids.txt
sort -u dittreads_adapterfilt_lim_asm_readids.txt > dittreads_adapterfilt_lim_asm_readids.uniq.txt

#conda activate seqtk

#seqtk subseq ../hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq dittreads_lim_asm_mapped_readids.uniq.txt > dittreads_lim_asm_mapped.fastq

#seqtk subseq ../hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq dittreads_lim_asm_mapped_F256_readids.uniq.txt > dittreads_lim_asm_mapped_F256.fastq

#seqtk subseq ../hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq dittreads_lim_asm_mapped_F256_q20_readids.uniq.txt > dittreads_lim_asm_mapped_F256_q20.fastq

#seqtk subseq ../hifi-raw/m64069_220505_192103.hifi_reads.fastq.gz dittreadsraw_lim_asm_mapped_readids.uniq.txt > dittreadsraw_lim_asm_mapped.fastq

seqtk subseq /public/groups/meyerlab/ditt/hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq.gz dittreads_adapterfilt_lim_asm_readids.uniq.txt > dittreads_adapterfilt_lim_asm_mapped.fastq
