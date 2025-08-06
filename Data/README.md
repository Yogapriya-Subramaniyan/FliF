## 01_Preecalculated_HMM 
01_Preecalculated_HMM  has precalculated HMM profiles for protein families from Pfam website.

## 02_Homologs_precalculated
02_Homologs_precalculated has the homologs got using hmmsearch using the profiles from 01_Preecalculated_HMM folder against the combined genome protein fasta file.

1. homologs.fasta is the combined fasta file using homologs of all family.
2. homologs_duplicated.fasta is the fasta files where duplicates were removed using AliView software.
3. Muscle_Nj, Mafft_Nj, Clustal_Nj contains the preliminary analysis done using the website [ETE3](https://www.genome.jp/tools-bin/ete) using the parameters where alignment cleaner is "Trimal_gappyout" and the mode tester is pmodeltest_soft_ultrafast.


## 03_Homologs_Jackhmmer

03_Homologs_Jackhmmer contain the sto file derived form alignment done by mafft on start sequences of each protein.
