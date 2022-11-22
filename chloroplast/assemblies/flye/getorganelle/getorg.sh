#!/bash/bin

#conda activate getorganelle

#get_organelle_config.py --add embplant_pt,embplant_mt,embplant_nr

#get_organelle_from_assembly.py --genes ../../getorganelle/limbarda_crithmoides.fasta -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_o/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_o 1> getorganelle.o 2>getorganelle.e

get_organelle_from_assembly.py -g /public/groups/meyerlab/ditt/organelle/flye/flye_chloroplast_o/assembly_graph.gfa -t 32 -F embplant_pt -o ditt_lim_flye_chloroplast_o2 1> getorganelle2.o 2>getorganelle2.e

