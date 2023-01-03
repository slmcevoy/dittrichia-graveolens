#!/bin/bash

awk '/^>/{print ">Dgra_v1_pri_scf_" sprintf("%03d", ++i); next}{ print }' < ../gapclose/adapterfilt-default/dittrichia_adapterfilt_default_hap1.fasta > dittrichia_primary_genome.fasta
awk '/^>/{print ">Dgra_v1_alt_scf_" sprintf("%03d", ++i); next}{ print }' < ../gapclose/adapterfilt-default/dittrichia_adapterfilt_default_hap2.fasta > dittrichia_alternate_genome.fasta
