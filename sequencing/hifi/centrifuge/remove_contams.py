import sys
from Bio import SeqIO
fastq_file = "/scratch8/dittrichia/hifiadapterfilt/ditt_hifiadapterfilt/m64069_220505_192103.hifi_reads.filt.fastq" 
remove_file = "ditt_contam_readids_abvf_index_uniq.txt"
result_file = "ditt_m64069_220505_192103.hifi_reads.filt.abvf.fastq"
with open(result_file, "w") as a, open(remove_file, "r") as b:
        reader = b.read().splitlines()
        for seq in SeqIO.parse(fastq_file, "fastq"):
                if seq.id not in reader:
                        SeqIO.write(seq, a, "fastq")
