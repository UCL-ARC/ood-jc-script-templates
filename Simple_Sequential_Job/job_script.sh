#!/bin/bash -l
#$ -l h_rt=0:5:00
#$ -cwd
#$ -j y

# Copy our input file to the job's temporary storage directory
cp input.inp "$TMPDIR/"

# Change into the temporary storage directory
cd "$TMPDIR"

# Use the input and create some output
tr 'aeiou' '_____' <input.inp >output.out

# Copy the results back to the original working directory
cp output.out "$SGE_O_WORKDIR/"

