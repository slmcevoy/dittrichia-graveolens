#!/bash/bin

#cut -f1 dittreads_lim_asm_mapped.sam > dittreads_lim_asm_mapped_readids.txt
cut -f1 dittreads_lim_asm_mapped_F256.sam > dittreads_lim_asm_mapped_F256_readids.txt

#conda activate seqtk

#seqtk subseq ../hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq dittreads_lim_asm_mapped_readids.uniq.txt > dittreads_lim_asm_mapped.fastq

seqtk subseq ../hifi-contams/ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq dittreads_lim_asm_mapped_F256_readids.uniq.txt > dittreads_lim_asm_mapped_F256.fastq
