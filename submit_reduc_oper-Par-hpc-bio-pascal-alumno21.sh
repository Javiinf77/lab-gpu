#!/bin/bash
#SBATCH --job-name=reduc_oper
#SBATCH --output=reduc_oper_%j.out
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=01:00:00
#SBATCH --partition=hpc-bio-pascal  # Cola especificada

# Cargar el módulo necesario
module load anaconda/2023.03

# Ejecutar el notebook con el tamaño del array especificado
ipython reduc-operation-array_par-alumno21.ipynb -- --value=50000000

