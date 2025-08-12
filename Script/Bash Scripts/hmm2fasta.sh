#!/bin/bash

csv_file="sto_files.csv"

tail -n +2 "$csv_file" | while IFS=','  read -r col1 hmm_file; do
      protein=$(echo "$hmm_file" | cut -d'_' -f1)
      mkdir $protein
      output="$protein,.txt"
      tableoutput="$protein,_hits_table.txt"
      domaintableoutput="$protein,domains_table.txt"
      hmmsearch  --cpu 4 -E 0.01 -o /$protein/$protein.txt --tblout /$protein/$tableoutput --domtblout /$protein/$domaintableoutput /Users/Yoga/Library/CloudStorage/Dropbox/flag/Full_genomes/Spo_Genomes/protein_20250805.fasta
```
done