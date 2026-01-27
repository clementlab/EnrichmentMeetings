import argparse
import time
import sys

sys.path.append(
    "/uufs/chpc.utah.edu/common/home/u0914269/clement/projects/20230828_tcga_methylation/analysis/11_benchmark_segmentation/05_run_all_tools"
)
from methyl_tool_comparator import (
    MethylToolComparator,
)


def run(confgif_file):
    UNID = "u0914269"
    time_str = time.strftime("%Y%m%d", time.localtime())
    out_dir = f"/scratch/general/vast/{UNID}/comparator_results/run_{time_str}"
    out_dir = "pathway"
    comparator = MethylToolComparator(confgif_file, out_dir, force_recreate=False)
    comparator.run()
    print("Script Run")


if __name__ == "__main__":
    # Parse command-line arguments
    parser = argparse.ArgumentParser(description="Run script with a specified model")

    parser.add_argument(
        "--config",
        type=str,
        help="Config file for the pathway",
        default="config.yaml",
    )

    args = parser.parse_args()

    # Call the function with the parsed arguments
    run(args.config)
