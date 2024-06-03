#!/bin/bash

#SBATCH --job-name=matMult
#SBATCH --output=/dev/null
#SBATCH --time=00:10 
#SBATCH --ntasks=2


export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR

singularity exec --bind /scratch_local:$TMPDIR cont.sif mpirun -n 2 /home/repo/build/main ./matrixA.txt ./matrixB.txt > stdout.txt 2> stderr.txt

rm -rf $TMPDIR
