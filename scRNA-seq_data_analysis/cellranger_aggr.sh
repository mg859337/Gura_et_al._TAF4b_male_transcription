#!/bin/bash

# Request resources: 
#SBATCH --time=40:00:00 
#SBATCH --cpus-per-task=32
#SBATCH --mem=246G

# Specify a job name: 
#SBATCH -J cellranger_aggr_Male

# Specify output and error files: 
#SBATCH -o outputfileaggr.out
#SBATCH -e errorfileaggr.err

module load cellranger/6.0.0

cellranger aggr --id=Male_aggr \
		--csv=/users/mgura/scratch/Male_scRNAseq/Libraries.csv \
		--normalize=none 


