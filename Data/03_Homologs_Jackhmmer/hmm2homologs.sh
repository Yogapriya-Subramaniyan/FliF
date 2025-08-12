#!/bin/bash

csv_file="sto_files.csv"

tail -n +2 "$csv_file" | while IFS=',' read -r protein sto_files hmm_files; do
      cd $protein
      tableoutput="${protein}_hits_table.txt"
      output="${protein}_hit_ids.txt"
      matched_hits="${protein}_matched_hits.fasta"
      
grep -v '^#' $tableoutput | awk '{print $1}' | sort -u > $output

seqkit grep -f $output /Users/Yoga/Library/CloudStorage/Dropbox/flag/Full_genomes/Spo_Genomes/protein_20250805.fasta > $matched_hits

cd ..

done