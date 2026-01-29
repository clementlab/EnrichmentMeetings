import argparse
import time
import random
import logging

logging.basicConfig(level=logging.INFO)

def run(input_value):
    for i in range(3):
        logging.info(f"Iteration {i+1}/3 for input: {input_value}")
        print(f"Starting work on: {input_value}")
        
        sleep_time = random.randint(1, 5)
        print(f"Sleeping for {sleep_time} seconds...")
        time.sleep(sleep_time)
        logging.error(f"Simulated error for input: {input_value}")
    
    print(f"Finished processing: {input_value}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Simple SLURM demo script")
    parser.add_argument("--input", required=True, help="Input value from configs.txt")
    args = parser.parse_args()

    run(args.input)
