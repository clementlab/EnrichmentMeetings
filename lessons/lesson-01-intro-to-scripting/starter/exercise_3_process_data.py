#!/usr/bin/env python3
"""
Exercise 3: Process Data File

TODO: Complete this script to read and summarize a data file.

Instructions:
1. Create a sample CSV file (or use the provided sample_data.csv)
2. Complete the process_file() function to read the file
3. Calculate some basic statistics
4. Write a summary to an output file

Hints:
- Use csv.DictReader() to read CSV files
- Use len() to count rows
- Remember to handle file not found errors!
"""

import csv

def process_file(input_file, output_file):
    """
    Read a data file and generate a summary.
    
    Args:
        input_file: Path to input CSV file
        output_file: Path to output summary
    """
    
    try:
        # TODO: Open and read the CSV file
        
        # TODO: Count rows and columns
        
        # TODO: Generate a summary
        
        # TODO: Write summary to output file
        
        print(f"Summary written to {output_file}")
        
    except FileNotFoundError:
        print(f"Error: File '{input_file}' not found.")
    except Exception as e:
        print(f"Error: {e}")

def main():
    # TODO: Update these filenames as needed
    process_file("sample_data.csv", "summary.txt")

if __name__ == "__main__":
    main()
