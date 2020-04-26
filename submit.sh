#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --tasks-per-node=24
#SBATCH -J must
#SBATCH -o must-%j.out
#SBATCH -e must-%j.out

srun --mpi=pmi2 mst2
