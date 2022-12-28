[07/12/2022 08:43:18 AM]  INFO (print_args|920): ================================================================================
[07/12/2022 08:43:18 AM]  INFO (print_args|921):                                     Settings                                    
[07/12/2022 08:43:18 AM]  INFO (print_args|922): ================================================================================
[07/12/2022 08:43:18 AM]  INFO (print_args|923):                                      aln = dittrichia_adapterfilt_draft_asm_wrapped.FINAL.sorted.bam
[07/12/2022 08:43:18 AM]  INFO (print_args|924):                                      bed = adapterfilt_hap1.gaps.bed
[07/12/2022 08:43:18 AM]  INFO (print_args|925):                                   genome = ../../scaffolding2/3ddna-default/dittrichia_adapterfilt_draft_asm_wrapped.FINAL.fasta
[07/12/2022 08:43:18 AM]  INFO (print_args|926):                                flanksize = 20
[07/12/2022 08:43:18 AM]  INFO (print_args|927):                                   output = yag_out
[07/12/2022 08:43:18 AM]  INFO (print_args|928):                               samplename = dittrichia_adapterfilt_hap1_gaps
[07/12/2022 08:43:18 AM]  INFO (print_args|929):                mapping_guality_threshold = 20
[07/12/2022 08:43:18 AM]  INFO (print_args|930):                   min_coverage_consensus = 2
[07/12/2022 08:43:18 AM]  INFO (print_args|931):                              min_support = 5
[07/12/2022 08:43:18 AM]  INFO (print_args|932):                 percent_linkage_distance = 0.1
[07/12/2022 08:43:18 AM]  INFO (print_args|933):                  percent_reads_threshold = 0.5
[07/12/2022 08:43:18 AM]  INFO (print_args|934):                    empty_flank_threshold = 0.2
[07/12/2022 08:43:18 AM]  INFO (print_args|935):                                      log = INFO
[07/12/2022 08:43:18 AM]  INFO (print_args|936): ================================================================================
[07/12/2022 08:43:18 AM]  INFO (main|1061): Creating main output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out).
[07/12/2022 08:43:18 AM]  INFO (main|1064): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out) exists.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|864): Creating output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.support).
[07/12/2022 08:43:18 AM]  WARNING (create_output_folders|865): Take into account that if these folders already exist files will be overwritten.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|871): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.support) exists.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|875): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.flanks) exists.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|879): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.fullsupport) exists.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|883): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.reads) exists.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|887): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.pre) exists.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|891): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.msa) exists.
[07/12/2022 08:43:18 AM]  INFO (create_output_folders|895): Output directory (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.consensus) exists.
[07/12/2022 08:43:18 AM]  INFO (parse_bed_file|62): ================================================================================
[07/12/2022 08:43:18 AM]  INFO (parse_bed_file|63): Reading BED file (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/adapterfilt_hap1.gaps.bed)
[07/12/2022 08:43:18 AM]  INFO (parse_bed_file|64): ================================================================================
[07/12/2022 08:43:18 AM]  INFO (parse_bed_file|86): Done reading BED file > 0:00:00.004441
[07/12/2022 08:43:18 AM]  INFO (parse_reference_file|95): ================================================================================
[07/12/2022 08:43:18 AM]  INFO (parse_reference_file|96): Reading scaffolds from reference file...
[07/12/2022 08:43:18 AM]  INFO (parse_reference_file|97): ================================================================================
[07/12/2022 08:43:30 AM]  INFO (generate_flank_table|146): ================================================================================
[07/12/2022 08:43:30 AM]  INFO (generate_flank_table|147): Extracting flank regions...
[07/12/2022 08:43:30 AM]  INFO (generate_flank_table|148): ================================================================================
[07/12/2022 08:43:30 AM]  INFO (generate_flank_table|180): Done with flanks extraction: > 0:00:00.000938
[07/12/2022 08:43:30 AM]  INFO (parse_reference_file|139): Done reading reference file (/public/groups/meyerlab/ditt/scaffolding2/3ddna-default/dittrichia_adapterfilt_draft_asm_wrapped.FINAL.fasta) > 0:00:12.945554
[07/12/2022 08:43:30 AM]  INFO (identify_potential_gaps|215): ================================================================================
[07/12/2022 08:43:30 AM]  INFO (identify_potential_gaps|216): Identifying potential gaps
[07/12/2022 08:43:30 AM]  INFO (identify_potential_gaps|217): ================================================================================
[07/12/2022 08:43:36 AM]  INFO (identify_potential_gaps|322): Done with the info extraction... > 0:00:05.590152
[07/12/2022 08:43:36 AM]  INFO (identify_potential_gaps|326): ================================================================================
[07/12/2022 08:43:36 AM]  INFO (identify_potential_gaps|327): Removing gaps with no support from analysis... 
[07/12/2022 08:43:36 AM]  INFO (identify_potential_gaps|328): ================================================================================
[07/12/2022 08:43:36 AM]  INFO (identify_potential_gaps|343): Removed 393 gaps.. > 0:00:00.000901
[07/12/2022 08:43:36 AM]  INFO (identify_potential_gaps|344): --------------------------------------------------------------------------------
[07/12/2022 08:43:36 AM]  INFO (identify_potential_gaps|345): Reporting removed gaps to file: /public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.no.support.gaps.txt
[07/12/2022 08:43:37 AM]  INFO (identify_potential_gaps|390): Reporting potential fillable gaps (/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.potential.fillable.gaps.txt)...
[07/12/2022 08:43:37 AM]  INFO (extract_support_data|418): ================================================================================
[07/12/2022 08:43:37 AM]  INFO (extract_support_data|419): Extracting support data
[07/12/2022 08:43:37 AM]  INFO (extract_support_data|420): ================================================================================
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|518): End of extracting support data > 0:00:04.900798
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|519): ================================================================================
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|520): Checking for ambiguos decisions...
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [        HiC_scaffold_1:61260493-61260993 (Support = 41)] 
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [            HiC_scaffold_142:31862-32362 (Support = 55)] 
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [        HiC_scaffold_4:10450638-10451138 (Support = 28)] 
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [        HiC_scaffold_4:23172000-23172500 (Support = 35)] 
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [        HiC_scaffold_5:35730862-35731362 (Support = 47)] 
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [        HiC_scaffold_8:38697362-38697862 (Support = 52)] 
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [        HiC_scaffold_8:38714862-38715362 (Support = 62)] 
[07/12/2022 08:43:41 AM]  INFO (extract_support_data|552): Removing gaps with ambiguous decisions... [        HiC_scaffold_8:38781362-38781862 (Support = 31)] 
[07/12/2022 08:43:42 AM]  INFO (extract_support_data|554): ================================================================================
[07/12/2022 08:43:42 AM]  INFO (extract_support_data|555): Writing support files
[07/12/2022 08:43:42 AM]  INFO (extract_support_data|556): ================================================================================
[07/12/2022 08:43:42 AM]  INFO (length_agreement|618): Length agreement
[07/12/2022 08:43:42 AM]  INFO (length_agreement|619): ================================================================================
[07/12/2022 08:43:42 AM]  INFO (length_agreement|713): Done length agreement process > 0:00:00.447871
[07/12/2022 08:43:42 AM]  INFO (length_agreement|714): ================================================================================
[07/12/2022 08:43:42 AM]  INFO (consensus_generation|723): Consensus generation...
[07/12/2022 08:43:42 AM]  INFO (consensus_generation|724): ================================================================================
[07/12/2022 08:43:42 AM]  INFO (consensus_generation|740): Reporting gaps with no length agreement data...
[07/12/2022 08:43:42 AM]  INFO (consensus_generation|764): [    1/    1]	/public/groups/meyerlab/ditt/gapclose/adapterfilt-default/yag_out/dittrichia_adapterfilt_hap1_gaps.msa/SszxzGKiiRx_7-33775862-33776362.fasta	[  15|   0|   0]
[07/12/2022 08:43:42 AM]  INFO (consensus_generation|808): Done consensus process > 0:00:00.035464
[07/12/2022 08:43:42 AM]  INFO (consensus_generation|809): ================================================================================
[07/12/2022 08:43:42 AM]  INFO (<module>|1087): Done
