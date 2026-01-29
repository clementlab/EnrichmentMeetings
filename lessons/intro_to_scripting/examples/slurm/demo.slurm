#!/bin/bash
#SBATCH --partition=notchpeak-guest
#SBATCH --account=owner-guest
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G
#SBATCH --time=00:05:00
#SBATCH --array=1-1
#SBATCH --output=logs/demo.%A_%a.out
#SBATCH --error=logs/demo.%A_%a.err

set -euo pipefail

# ---- Setup ----
SCRDIR=/scratch/general/vast/$USER/enrichment_slurm_demo
mkdir -p "$SCRDIR/logs"
cd "$SCRDIR"

# ---- Select input for this array task ----
CONFIG=$(sed -n "${SLURM_ARRAY_TASK_ID}p" /uufs/chpc.utah.edu/common/home/u0914269/EnrichmentMeetings/lessons/intro_to_scripting/examples/slurm/configs.txt)

echo "Job ID: $SLURM_JOB_ID"
echo "Array task ID: $SLURM_ARRAY_TASK_ID"
echo "Config value: $CONFIG"
echo "Running on host: $(hostname)"

# ---- Run the "pipeline" ----
python /uufs/chpc.utah.edu/common/home/u0914269/EnrichmentMeetings/lessons/intro_to_scripting/examples/slurm/demo.py --input "$CONFIG"

echo "Finished at $(date)"
