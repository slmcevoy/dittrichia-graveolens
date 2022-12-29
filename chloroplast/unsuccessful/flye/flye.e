[2022-11-14 13:52:12] INFO: Starting Flye 2.9.1-b1780
[2022-11-14 13:52:12] INFO: >>>STAGE: configure
[2022-11-14 13:52:12] INFO: Configuring run
[2022-11-14 13:52:13] INFO: Total read length: 169628266
[2022-11-14 13:52:13] INFO: Input genome size: 140000
[2022-11-14 13:52:13] INFO: Estimated coverage: 1211
[2022-11-14 13:52:13] WARNING: Expected read coverage is 1211, the assembly is not guaranteed to be optimal in this setting. Are you sure that the genome size was entered correctly?
[2022-11-14 13:52:13] INFO: Reads N50/N90: 14645 / 9011
[2022-11-14 13:52:13] INFO: Minimum overlap set to 9000
[2022-11-14 13:52:13] INFO: >>>STAGE: assembly
[2022-11-14 13:52:13] INFO: Assembling disjointigs
[2022-11-14 13:52:13] INFO: Reading sequences
[2022-11-14 13:52:14] INFO: Building minimizer index
[2022-11-14 13:52:14] INFO: Pre-calculating index storage
0% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 13:52:15] INFO: Filling index
0% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 13:52:27] INFO: Extending reads
[2022-11-14 13:56:53] INFO: Overlap-based coverage: 22
[2022-11-14 13:56:53] INFO: Median overlap divergence: 0.000516262
0% 10% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 13:57:34] INFO: Assembled 186 disjointigs
[2022-11-14 13:57:34] INFO: Generating sequence
0% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 13:57:35] INFO: Filtering contained disjointigs
0% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 13:57:35] INFO: Contained seqs: 4
[2022-11-14 13:57:36] INFO: >>>STAGE: consensus
[2022-11-14 13:57:36] INFO: Running Minimap2
[2022-11-14 13:57:46] INFO: Computing consensus
[2022-11-14 13:59:08] INFO: Alignment error rate: 0.011877
[2022-11-14 13:59:08] INFO: >>>STAGE: repeat
[2022-11-14 13:59:08] INFO: Building and resolving repeat graph
[2022-11-14 13:59:08] INFO: Parsing disjointigs
[2022-11-14 13:59:08] INFO: Building repeat graph
0% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 13:59:09] INFO: Median overlap divergence: 0.0158943
[2022-11-14 13:59:10] INFO: Parsing reads
[2022-11-14 13:59:11] INFO: Aligning reads to the graph
0% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 13:59:16] INFO: Aligned read sequence: 150545961 / 152769055 (0.985448)
[2022-11-14 13:59:16] INFO: Median overlap divergence: 0.000137925
[2022-11-14 13:59:16] INFO: Mean edge coverage: 19
[2022-11-14 13:59:16] INFO: Simplifying the graph
[2022-11-14 13:59:17] INFO: >>>STAGE: contigger
[2022-11-14 13:59:17] INFO: Generating contigs
[2022-11-14 13:59:17] INFO: Reading sequences
[2022-11-14 13:59:18] INFO: Generated 182 contigs
[2022-11-14 13:59:18] INFO: Added 0 scaffold connections
[2022-11-14 13:59:19] INFO: >>>STAGE: polishing
[2022-11-14 13:59:19] INFO: Polishing genome (1/1)
[2022-11-14 13:59:19] INFO: Running minimap2
[2022-11-14 13:59:30] INFO: Separating alignment into bubbles
[2022-11-14 14:01:11] INFO: Alignment error rate: 0.006872
[2022-11-14 14:01:11] INFO: Correcting bubbles
0% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% 
[2022-11-14 14:01:49] INFO: >>>STAGE: finalize
[2022-11-14 14:01:49] INFO: Assembly statistics:

	Total length:	7457823
	Fragments:	182
	Fragments N50:	40403
	Largest frg:	82727
	Scaffolds:	0
	Mean coverage:	19

[2022-11-14 14:01:49] INFO: Final assembly: /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_o/assembly.fasta
