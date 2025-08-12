#!/bin/bash
csv_file="sto_files.csv"

tail -n +2 "$csv_file" | while IFS=',' read -r protein sto_files hmm_files; do

      mkdir $protein
      cp /Users/Yoga/Library/CloudStorage/OneDrive-Personal/PG\ Materials/Semester3/Alignment/$protein.fasta ./$protein
      
done
