#!/bin/bash

# Directory where SLURM logs will live
SCRDIR=/scratch/general/vast/$USER/enrichment_slurm_demo
mkdir -p "$SCRDIR"
cd "$SCRDIR"

ts=$(date +%s)

[ ! -d logs ]    || mv logs    logs_backup_$ts

# Count how many jobs we want to run
N=$(wc -l < /uufs/chpc.utah.edu/common/home/u0914269/EnrichmentMeetings/lessons/intro_to_scripting/examples/slurm/configs.txt)

echo "Submitting $N SLURM jobs..."

sbatch --array=1-$N /uufs/chpc.utah.edu/common/home/u0914269/EnrichmentMeetings/lessons/intro_to_scripting/examples/slurm/demo.slurm
