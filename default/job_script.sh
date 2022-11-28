#!/bin/bash -l
#$ -l h_rt=0:5:00
#$ -cwd
#$ -j y

echo "Hello from job $JOB_ID"
echo "I am running on this node: $(hostname)"
echo " at this time: $(date)"
