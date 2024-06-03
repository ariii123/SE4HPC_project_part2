#!/bin/bash

#SBATCH --job-name=matMult
#SBATCH --output=matMult.out
#SBATCH --time=00:10 
#SBATCH --ntasks=1 
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=10M

singularity exec cont.sif mpirun -n 2 /home/repo/build/main ./matrixA.txt ./matrixB.txt > stdout.txt 2> stderr.txt
