#!/usr/bin/env python3
"""
Example 3: Batch Rename Files

This script renames multiple files following a pattern.
Demonstrates:
- Looping through files
- String manipulation
- File operations with error handling
"""

import os
import glob

def rename_files(pattern, old_text, new_text, dry_run=True):
    """
    Rename files matching a pattern by replacing text.
    
    Args:
        pattern: Glob pattern for files to rename (e.g., "*.txt")
        old_text: Text to replace in filename
        new_text: New text to use
        dry_run: If True, show what would happen without actually renaming
    """
    
    # Find all files matching the pattern
    files = glob.glob(pattern)
    
    if not files:
        print(f"No files found matching pattern: {pattern}")
        return
    
    print(f"Found {len(files)} file(s) matching '{pattern}'")
    print()
    
    renamed_count = 0
    
    for old_name in files:
        # Check if the old text is in the filename
        if old_text in old_name:
            # Create the new filename
            new_name = old_name.replace(old_text, new_text)
            
            if dry_run:
                print(f"Would rename: {old_name} -> {new_name}")
            else:
                try:
                    os.rename(old_name, new_name)
                    print(f"Renamed: {old_name} -> {new_name}")
                    renamed_count += 1
                except Exception as e:
                    print(f"Error renaming {old_name}: {e}")
    
    if dry_run:
        print("\nThis was a dry run. Set dry_run=False to actually rename files.")
    else:
        print(f"\n✅ Successfully renamed {renamed_count} file(s)!")

def main():
    # Example: Rename all .txt files, replacing "data" with "dataset"
    # Set dry_run=True to preview changes, False to actually rename
    rename_files(
        pattern="*.txt",
        old_text="data",
        new_text="dataset",
        dry_run=True
    )

if __name__ == "__main__":
    main()
