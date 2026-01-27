#!/usr/bin/env python3
"""
Example 4: Process CSV Data

This script reads a CSV file and generates a simple summary.
Demonstrates:
- Reading files
- Processing data line by line
- Basic calculations
- Writing output
"""

import csv
from collections import defaultdict

def process_csv(input_file, output_file):
    """
    Read a CSV file and generate a summary report.
    
    Args:
        input_file: Path to input CSV file
        output_file: Path to output summary file
    """
    
    try:
        # Statistics to collect
        row_count = 0
        column_data = defaultdict(list)
        
        # Read the CSV file
        with open(input_file, 'r') as f:
            reader = csv.DictReader(f)
            
            for row in reader:
                row_count += 1
                # Collect data from each column
                for column, value in row.items():
                    column_data[column].append(value)
        
        # Generate summary
        summary = []
        summary.append(f"CSV Summary Report")
        summary.append(f"=" * 50)
        summary.append(f"Input file: {input_file}")
        summary.append(f"Total rows: {row_count}")
        summary.append(f"Total columns: {len(column_data)}")
        summary.append("")
        summary.append("Columns:")
        for column in column_data.keys():
            summary.append(f"  - {column}")
        
        # Write summary to file
        with open(output_file, 'w') as f:
            f.write('\n'.join(summary))
        
        print(f"✅ Summary written to {output_file}")
        print()
        print('\n'.join(summary))
        
    except FileNotFoundError:
        print(f"❌ Error: File '{input_file}' not found.")
        print("Make sure the file exists in the current directory.")
    except Exception as e:
        print(f"❌ Error processing file: {e}")

def main():
    # Process a sample CSV file
    # Note: sample_data.csv can be found in the starter/ directory
    process_csv("sample_data.csv", "summary.txt")

if __name__ == "__main__":
    main()
