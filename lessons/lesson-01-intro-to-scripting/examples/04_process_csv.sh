#!/bin/bash
# Example 4: Process CSV Data
#
# This script reads a CSV file and generates a simple summary.
# Demonstrates:
# - Reading files line by line
# - Processing CSV data
# - Using awk for data processing
# - Writing output to a file

CSV_FILE="sample_data.csv"
OUTPUT_FILE="summary.txt"

echo "CSV Processing Script"
echo "===================="
echo ""

# Check if file exists
if [ ! -f "$CSV_FILE" ]; then
    echo "❌ Error: File '$CSV_FILE' not found."
    echo "Make sure the file exists in the current directory."
    exit 1
fi

# Count lines (excluding header)
total_rows=$(($(wc -l < "$CSV_FILE") - 1))

# Count columns (from header line)
columns=$(head -n 1 "$CSV_FILE" | tr ',' '\n' | wc -l)

# Get column names
echo "Processing file: $CSV_FILE"
echo ""

# Generate summary
{
    echo "CSV Summary Report"
    echo "=================================================="
    echo "Input file: $CSV_FILE"
    echo "Total rows: $total_rows"
    echo "Total columns: $columns"
    echo ""
    echo "Columns:"
    
    # Extract and display column names
    head -n 1 "$CSV_FILE" | tr ',' '\n' | while read -r col; do
        echo "  - $col"
    done
    
    echo ""
    echo "Sample data (first 5 rows):"
    echo "=================================================="
    head -n 6 "$CSV_FILE" | column -t -s','
    
} > "$OUTPUT_FILE"

# Display the summary
cat "$OUTPUT_FILE"

echo ""
echo "✅ Summary written to $OUTPUT_FILE"
