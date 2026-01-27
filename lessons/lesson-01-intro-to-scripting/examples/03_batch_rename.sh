#!/bin/bash
# Example 3: Batch Rename Files
#
# This script renames multiple files following a pattern.
# Demonstrates:
# - Looping through files
# - String manipulation
# - Conditionals
# - Dry-run capability

# Configuration
PATTERN="*.txt"              # Files to match
OLD_TEXT="data"              # Text to replace
NEW_TEXT="dataset"           # Replacement text
DRY_RUN=true                 # Set to false to actually rename files

echo "Batch File Renaming Script"
echo "=========================="
echo "Pattern: $PATTERN"
echo "Replace: '$OLD_TEXT' with '$NEW_TEXT'"
echo ""

# Count files found
count=0
for file in $PATTERN; do
    # Check if file exists (glob returns pattern if no match)
    if [ -e "$file" ]; then
        ((count++))
    fi
done

if [ $count -eq 0 ]; then
    echo "No files found matching pattern: $PATTERN"
    exit 1
fi

echo "Found $count file(s) matching '$PATTERN'"
echo ""

# Rename files
renamed=0
for old_name in $PATTERN; do
    # Check if file exists
    if [ ! -e "$old_name" ]; then
        continue
    fi
    
    # Check if the old text is in the filename
    if [[ "$old_name" == *"$OLD_TEXT"* ]]; then
        # Create the new filename using parameter expansion
        new_name="${old_name//$OLD_TEXT/$NEW_TEXT}"
        
        if [ "$DRY_RUN" = true ]; then
            echo "[DRY RUN] Would rename: $old_name -> $new_name"
        else
            mv "$old_name" "$new_name"
            echo "Renamed: $old_name -> $new_name"
            ((renamed++))
        fi
    fi
done

echo ""
if [ "$DRY_RUN" = true ]; then
    echo "This was a dry run. Set DRY_RUN=false to actually rename files."
else
    echo "✅ Successfully renamed $renamed file(s)!"
fi
