#!/bin/bash -l
#$ -l h_rt=0:5:00
#$ -pe smp 8
#$ -cwd
#$ -j y

# Copy our source code file to the job's temporary storage directory
# This source file is taken from our repository of example code, https://github.com/UCL-RITS/pi_examples
cp openmp_pi.c "$TMPDIR/"

# Change into the temporary storage directory
cd "$TMPDIR"

# Build the program
gcc -fopenmp -o openmp_pi openmp_pi.c

# Run the program
./openmp_pi >output.out

# Copy the results back to the original working directory
cp output.out "$SGE_O_WORKDIR/"

