#!/bin/bash

csv_file="sto_files.csv"

tail -n +2 "$csv_file" | while IFS=','  read -r protein sto_files hmm_files; do
      cd $protein
      hmmbuild "$hmm_files" "$sto_files"
      cd ..
done 