#!/bash/bin

#conda activate getorganelle

#get_organelle_config.py --add embplant_pt,embplant_mt,embplant_nr

#get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_o/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_o 1> getorganelle.o 2>getorganelle.e

#get_organelle_from_assembly.py -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_o/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_o2 1> getorganelle2.o 2>getorganelle2.e

#get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_q20_o/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_q20_o 1> getorganelleq20.o 2>getorganelleq20.e

#get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g ditt_lim_flye_chloroplast_q20_o/edited_slimmed_assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_q20_edited_o 1> getorganelleq20e.o 2>getorganelleq20e.e

#get_organelle_from_assembly.py -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_raw/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_raw_o 1> getorganelleraw.o 2>getorganelleraw.e

#get_organelle_from_assembly.py -g ditt_lim_flye_chloroplast_raw_o/embplant_pt.contigs.graph1.selected_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_raw_edited_o 1> getorganellerawe.o 2>getorganellerawe.e

#get_organelle_from_assembly.py -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_adapterfilt/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_adapterfilt_o 1> getorganelleadapter.o 2>getorganelleadapter.e

#get_organelle_from_assembly.py -g ditt_lim_flye_chloroplast_adapterfilt_o/slimmed_assembly_graph.edited.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_adapterfilt_edited 1> getorganelleadaptere.o 2>getorganelleadaptere.e

#get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_adapterfilt/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_adapterfilt_o2 1> getorganelleadapter2.o 2>getorganelleadapter2.e

get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g ditt_lim_flye_chloroplast_adapterfilt_o2/slimmed_assembly_graph.edited.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_adapterfilt_edited2 1> getorganelleadaptere2.o 2>getorganelleadaptere2.e
