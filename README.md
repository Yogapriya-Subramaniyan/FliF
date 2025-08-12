# Structural Phylogeny of FliF
This repository contains the pipeline for performing the structural phylogeny of a protein.

##Methods Used:

### Collection of Sequences:
1. The sequences would be collected from the genomes available in the dropbox ().
From all the genomes, the protein fasta files are collected and stored in the file (), which is used for the further collection of homolog proteins.

### Homolog sequence identification
#### Using Existing Profile downloaded from Pfam
1. The hmm(Hidded Markov Model) file for the protein families are downloaded from the website Pfam.
2. Using the hmm files, the homolog sequences was extracted from the protein fasta file using the hmmsearch function from Jackhmmer and concatenated.
3. From the concatenated fasta file, the duplicate sequences are removed and further analysis were carried out.

#### Using Manually Collected Start Sequences for protein family
1. From the start sequences, they are aligned, sto files are created, which are then used to create a hmm profile for each protein.
2. Using the hmm files, the same set of steps are carried out.



