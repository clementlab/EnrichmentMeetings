#!/bin/bash

SCRDIR=/scratch/general/vast/$USER/slurm_jobs/
mkdir -p "$SCRDIR"
cd "$SCRDIR"

N=$(wc -l < /uufs/chpc.utah.edu/common/home/u0914269/clement/projects/20230828_tcga_methylation/analysis/11_benchmark_segmentation/05_run_all_tools/slurm_code/configs.txt)

sbatch --array=1-$N /uufs/chpc.utah.edu/common/home/u0914269/clement/projects/20230828_tcga_methylation/analysis/11_benchmark_segmentation/05_run_all_tools/slurm_code/methylation_comparator.slurm