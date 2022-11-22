#!/bash/bin

#conda activate getorganelle

#get_organelle_config.py --add embplant_pt,embplant_mt,embplant_nr

#get_organelle_from_assembly.py --genes ditt_hifiasm_graph_o2/embplant_pt.scaffolds.graph1.1.path_sequence.fasta -g ../assemblies/hifiasm/default/ditt_contamfiltered_hifiasm.asm.bp.p_utg.gfa -t 32 -F embplant_pt -o ditt_hifiasm_graph_o3 1> getorganelle3.o 2>getorganelle3.e

#get_organelle_from_assembly.py --genes limbarda_crithmoides.fasta -g ../assemblies/hifiasm/default/ditt_contamfiltered_hifiasm.asm.bp.p_utg.gfa -t 48 -F embplant_pt -o ditt_hifiasm_graph_o4 1> getorganelle4.o 2>getorganelle4.e


#get_organelle_from_assembly.py --genes limbarda_crithmoides.fasta -g ../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.p_utg.gfa -t 48 -F anonym -o ditt_hifiasm_graph_o5 1> getorganelle5.o 2>getorganelle5.e


#get_organelle_from_assembly.py --genes limbarda_crithmoides.fasta -g ../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.gfa -t 48 -F embplant_pt -o ditt_hifiasm_graph_o6 1>getorganelle6.o 2>getorganelle6.e

#join_spades_fastg_by_blast.py -g ditt_hifiasm_graph_o6/embplant_pt.contigs.graph1.selected_graph.gfa  -f limbarda_crithmoides_genome.fasta 1>getorganellejoinspades.o 2>getorganellejoinspades.e

#get_organelle_from_assembly.py --genes limbarda_crithmoides.fasta -g ditt_hifiasm_graph_o6/embplant_pt.contigs.graph1.selected_graph.gfa -t 48 -F embplant_pt -o ditt_hifiasm_graph_o7 1>getorganelle7.o 2>getorganelle7.e

#export PATH=$PATH:/public/groups/meyerlab/software/minimap2
#minimap2 -ax asm5 limbarda_crithmoides_genome.fasta ../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.fa > limbarda_chloroplast_dittrichia_asm.sam
#grep '^h1tg' limbarda_chloroplast_dittrichia_asm.sam | cut -f1-11 - > limbarda_chloroplast_dittrichia_asm.sam.parsed

#get_organelle_from_assembly.py --genes h1tg000036l.fasta -g ditt_hifiasm_graph_o6/embplant_pt.contigs.graph1.selected_graph.gfa -t 48 -F embplant_pt -o ditt_hifiasm_graph_o8 1>getorganelle8.o 2>getorganelle8.e

#get_organelle_from_assembly.py -g ../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap1.p_ctg.gfa -t 48 -F embplant_mt -o ditt_hifiasm_graph_o11 1>getorganelle11.o 2>getorganelle11.e

get_organelle_from_assembly.py -g ../assemblies/hifiasm/homozygousomnic/ditt_contamfiltered_hifiasm_l0_omnic.asm.hic.hap2.p_ctg.gfa -t 48 -F embplant_pt -o ditt_hifiasm_graph_o11 1>getorganelle11.o 2>getorganelle11.e
