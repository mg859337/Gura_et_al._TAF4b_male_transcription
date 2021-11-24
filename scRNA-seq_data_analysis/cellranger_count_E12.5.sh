#!/bin/bash

# Request resources: 
#SBATCH --time=40:00:00 
#SBATCH --cpus-per-task=32
#SBATCH --mem=246G

# Specify a job name: 
#SBATCH -J cellranger_count

# Specify output and error files: 
#SBATCH -o outputfilecount.out
#SBATCH -e errorfilecount.err

module load cellranger/6.0.0 

# Change id, fastqs, and sample based on sample name and file locations. E12.5 used as an example

cellranger count 	--id=E12_germ_cells \
					--transcriptome=../refdata-gex-mm10-2020-A \
					--fastqs=/users/mgura/scratch/Zhao \
					--sample=E12.5
