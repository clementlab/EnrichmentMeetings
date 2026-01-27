#!/bin/bash
#SBATCH --partition=notchpeak-guest
#SBATCH --account=owner-guest
#SBATCH --nodes=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=60G
#SBATCH --time=48:00:00
#SBATCH --array=1-1
#SBATCH --output=logs/methylation.%A_%a.out
#SBATCH --error=logs/methylation.%A_%a.err
#SBATCH --requeue

set -euo pipefail

# ---- Scratch ----
SCRDIR=/scratch/general/vast/$USER/slurm_jobs/
mkdir -p "$SCRDIR"
cd "$SCRDIR"

# ---- Conda ----
source /uufs/chpc.utah.edu/common/home/clementm-group1/conda/mambaforge/bin/activate
conda activate jt_wgbs_analysis

# ---- Select config for this task ----
CONFIG=$(sed -n "${SLURM_ARRAY_TASK_ID}p" /uufs/chpc.utah.edu/common/home/u0914269/clement/projects/20230828_tcga_methylation/analysis/11_benchmark_segmentation/05_run_all_tools/slurm_code/configs.txt)

echo "Array task: $SLURM_ARRAY_TASK_ID"
echo "Config: $CONFIG"
echo "CPUs: $SLURM_CPUS_PER_TASK"

PIPELINE=/uufs/chpc.utah.edu/common/home/u0914269/clement/projects/20230828_tcga_methylation/analysis/11_benchmark_segmentation/05_run_all_tools/slurm_code/run_pathway.py

python "$PIPELINE" --config "$CONFIG" 

echo "Done at $(date)"
