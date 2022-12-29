#!/bash/bin

#conda activate getorganelle

#get_organelle_config.py --add embplant_pt,embplant_mt,embplant_nr

# start with assembly graph output from flye (using reads that align to Limbarda)
#get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_adapterfilt/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_adapterfilt_o2 1> getorganelleadapter2.o 2>getorganelleadapter2.e

# manually edit the slimmed_assembly_graph.gfa to remove the low coverage contigs redundant to ones with higher coverage, likely nuclear
get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g ditt_lim_flye_chloroplast_adapterfilt_o2/slimmed_assembly_graph.edited.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_adapterfilt_edited2 1> getorganelleadaptere2.o 2>getorganelleadaptere2.e
