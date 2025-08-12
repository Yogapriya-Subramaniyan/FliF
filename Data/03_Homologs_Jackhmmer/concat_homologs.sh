#!/bin/bash

find ./ -name "*_matched_hits.fasta" -execdir cat '{}' \; > homologs.fasta