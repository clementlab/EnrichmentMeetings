#!/bin/bash
module load nvhpc

usage() {
    echo "Usage: $0 [-g NUM_GPUS] [-t TIME_LIMIT] [--num_gpus NUM_GPUS] [--timelimit TIME_LIMIT]"
    echo "Request GPUs using SLURM."
    echo
    echo "Arguments:"
    echo "  -g NUM_GPUS   Number of GPUs to request (default: 2)"
    echo "  -t TIME_LIMIT Time limit for the job in the format HH:MM:SS (default: 2:00:00)"
    echo "  -m MEM        Memory limit for the job in MB (default: 0, no limit)"
    echo
    echo "Options:"
    echo "  --usage       Display this usage message"
    echo "  --num_gpus    Number of GPUs to request (same as -g)"
    echo "  --timelimit   Time limit for the job in the format HH:MM:SS (same as -t)"
    echo "  --mem        Memory limit for the job in MB (same as -m)"
}

# Handle long options manually
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --usage)
            usage
            exit 0
            ;;
        --num_gpus)
            NUM_GPUS=$2
            shift 2
            ;;
        --mem)
            MEM=$2
            shift 2
            ;;
        --timelimit)
            TIME_LIMIT=$2
            shift 2
            ;;
        -g)
            NUM_GPUS=$2
            shift 2
            ;;
        -t)
            TIME_LIMIT=$2
            shift 2
            ;;
        -m)
            MEM=$2
            shift 2
            ;;
        *)
            usage
            exit 1
            ;;
    esac
done

# Default values if not set by user
NUM_GPUS=${NUM_GPUS:-2}
TIME_LIMIT=${TIME_LIMIT:-2:00:00}
MEM=${MEM:-0}

# Display the salloc command for the user
echo "Requesting job with $NUM_GPUS GPUs, $MEM Memory and time limit $TIME_LIMIT."
salloc --nodes 1 --ntasks 8 --mem "$MEM" -t "$TIME_LIMIT" -p notchpeak-gpu -A notchpeak-gpu --gres=gpu:$NUM_GPUS
