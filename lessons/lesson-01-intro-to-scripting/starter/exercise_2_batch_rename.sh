#!/bin/bash
# Exercise 2: Batch Rename Files
#
# TODO: Complete this script to rename files in bulk.
#
# Instructions:
# 1. First create some test files: touch test_data_1.txt test_data_2.txt
# 2. Complete the script below to rename them
# 3. Test with DRY_RUN=true first to preview changes
# 4. Set DRY_RUN=false to actually rename files
#
# Hints:
# - Use a for loop to iterate through files matching a pattern
# - Use parameter expansion ${var//old/new} to replace text
# - Check if file exists with [ -f "$file" ]

# Configuration
PATTERN="test_*.txt"    # Files to match
OLD_TEXT="test"         # Text to replace
NEW_TEXT="sample"       # Replacement text
DRY_RUN=true           # Set to false to actually rename

echo "Batch File Renaming Script"
echo "=========================="
echo ""

# TODO: Loop through files matching $PATTERN
# for file in $PATTERN; do
#     # TODO: Check if file exists
#     
#     # TODO: Check if OLD_TEXT is in the filename
#     
#     # TODO: Create new filename by replacing OLD_TEXT with NEW_TEXT
#     
#     # TODO: Rename the file (or show what would happen if DRY_RUN)
# done

echo ""
if [ "$DRY_RUN" = true ]; then
    echo "This was a dry run. Set DRY_RUN=false to actually rename files."
fi
