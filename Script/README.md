## 00_TaxonID2GenomeAccession.R (gets the GCA ftp, have to modify it to get the GCF ftp path)
Input: An Excel file with taxon Id of the genomes to be downloaded
Output: An excel with the ftp path of the reference genome of the taxa 

## 01_SequenceCollection.Rmd
1. The genomes are collected in the dropboxn using the bash script download_Genomes.sh
2. The protein fasta from all the genomes are stored in the fasta file 01_SequenceCollection.Rmd (in dropbox)
3. Using the precalculated hmm profile of protein families () the distant homologs are collected and stored in homologs.fasta

4. From the set of start sequences, the hmm files are created, and the homologs are collected and stored in homologs.fasta

## Bash scripts
All the below scripts need a csv file which has the columns of protein, sto_files, hmm_files
### fasta.sh
Creating a folder for each protein family and storint the fasta file of each protein family
### fasta2sto.sh
Creates sto file form the fasta file
### sto2hmm.sh
Creates a hmm profile from the sto files
### hmm2fasta.sh
Collects the list of sequences that a distant homologs using the hmm files
### hmm2homologs.sh
Using the hits of hmm homolog search, the homolog sequences are collected and stored within the corresponding folder
### concat_homologs.sh
The homolog sequences collected for each file is concated and stored in a single fasta file.

## Reusable_Codes
## Relabelling Alignment
Has the code for following functions
1. Reaming fasta file
2. Renaming tree file
2. Reordering fasta file based on a tree (Both the fasta file and the tree should have the same name for sequences) 

