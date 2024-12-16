#!/bin/bash
#SBATCH --job-name=reduc_gpu
#SBATCH --output=reduc_gpu_%j-5*10^8.out
#SBATCH --error=reduc_gpu_%j-5*10^8.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --partition=hpc-bio-nikola-gpu
#SBATCH --time=01:00:00

module load anaconda/2023.03
ipython reduc-operation-array_gpu-alumno21.ipynb -- --value=500000000

