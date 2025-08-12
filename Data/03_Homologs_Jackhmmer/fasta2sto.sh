#!/bin/bash
csv_file="sto_files.csv"

tail -n +2 "$csv_file" | while IFS=',' read -r protein sto_files hmm_files; do

     cd $protein
     mafft --maxiterate 1000 --localpair $protein.fasta | esl-reformat stockholm -> $sto_files
     cd ..
     
done