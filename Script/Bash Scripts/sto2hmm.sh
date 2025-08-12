#!/bin/bash

csv_file="sto_files.csv"

tail -n +2 "$csv_file" | while IFS = ','  read -r sto_file hmm_file; do
      hmmbuild "$hmm_file" "$sto_file"
done