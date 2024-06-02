#!/bin/bash


singularity exec singularity/cont.sif mpirun -n 2 /home/repo/build/main ./matrixA.txt ./matrixB.txt > output/stdout.txt 2> output/stderr.txt
