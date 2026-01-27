#!/usr/bin/env python3
"""
Exercise 2: Batch Rename Files

TODO: Complete this script to rename files in bulk.

Instructions:
1. Create some test files first (test_data_1.txt, test_data_2.txt, etc.)
2. Complete the rename_files() function
3. Test with dry_run=True first to preview changes
4. Run with dry_run=False to actually rename files

Hints:
- Use glob.glob() to find files matching a pattern
- Use os.rename() to rename files
- Always test with dry_run first!
"""

import os
import glob

def rename_files(pattern, old_text, new_text, dry_run=True):
    """
    Rename files by replacing text in their names.
    
    Args:
        pattern: File pattern to match (e.g., "*.txt")
        old_text: Text to replace
        new_text: Replacement text
        dry_run: If True, only show what would happen
    """
    
    # TODO: Find files matching the pattern
    files = []  # Use glob.glob() here
    
    # TODO: Loop through files and rename them
    
    if dry_run:
        print("This was a dry run. Set dry_run=False to actually rename files.")

def main():
    # TODO: Modify these parameters for your use case
    rename_files(
        pattern="test_*.txt", # Files to match
        old_text="test",      # Text to replace
        new_text="sample",    # Replacement text
        dry_run=True          # Preview mode
    )

if __name__ == "__main__":
    main()
