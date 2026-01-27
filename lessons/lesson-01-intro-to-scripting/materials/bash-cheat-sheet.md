# Bash Scripting Cheat Sheet

## What is a Shebang?

The shebang (`#!`) is the first line of a script that tells the system which interpreter to use.

```bash
#!/bin/bash
```

Always use this as the first line of your bash scripts!

## Basic Script Structure

```bash
#!/bin/bash
# This is a comment - describes what the script does

# Your commands go here
echo "Hello, World!"
```

## Variables

```bash
# Create a variable (no spaces around =)
name="Alice"
age=25

# Use a variable (with $)
echo "Name: $name"
echo "Age: $age"
```

## Taking Input in Bash

```bash
# Simple input
read -p "Enter your name: " username
echo "Hello, $username!"

# Read password (hidden input)
read -sp "Enter password: " password
echo ""  # New line after password

# Read with a default value
read -p "Enter filename [default.txt]: " filename
filename=${filename:-default.txt}
echo "Using: $filename"
```

## Command Substitution

Run a command and store its output in a variable:

```bash
# Modern syntax (preferred)
current_date=$(date)
file_count=$(ls | wc -l)

# Old syntax (still works)
current_date=`date`
```

## Common Commands

```bash
# Print text
echo "Hello, World!"

# Create directory
mkdir my_folder
mkdir -p path/to/nested/folder  # -p creates parent directories

# List files
ls          # Simple list
ls -la      # Detailed list with hidden files

# Copy, move, delete
cp file.txt backup.txt
mv old.txt new.txt
rm file.txt

# Check if file exists
if [ -f "file.txt" ]; then
    echo "File exists"
fi

# Check if directory exists
if [ -d "folder" ]; then
    echo "Directory exists"
fi
```

## Loops

```bash
# Loop through files
for file in *.txt; do
    echo "Processing: $file"
done

# Loop with numbers
for i in {1..5}; do
    echo "Number: $i"
done

# While loop
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done
```

## Conditionals

```bash
# If statement
if [ condition ]; then
    echo "True"
else
    echo "False"
fi

# String comparison
if [ "$name" = "Alice" ]; then
    echo "Hello Alice!"
fi

# Number comparison
if [ $age -gt 18 ]; then
    echo "Adult"
fi
# -eq  equal
# -ne  not equal
# -lt  less than
# -gt  greater than
# -le  less than or equal
# -ge  greater than or equal
```

## Script Arguments

```bash
# Access command line arguments
$0    # Script name
$1    # First argument
$2    # Second argument
$@    # All arguments
$#    # Number of arguments

# Example usage:
echo "Script name: $0"
echo "First argument: $1"
echo "All arguments: $@"
echo "Number of arguments: $#"
```

## Making Scripts Executable

```bash
# Make script executable
chmod +x script.sh

# Run the script
./script.sh
```

## Debugging

```bash
# Run script with debug output
bash -x script.sh

# Add debugging to part of script
set -x  # Turn on debugging
# ... your commands ...
set +x  # Turn off debugging
```

## Best Practices

1. **Always quote variables**: Use `"$var"` not `$var`
2. **Check before you delete**: Use `rm -i` for important files
3. **Test scripts with sample data** before running on real data
4. **Add comments** to explain what your script does
5. **Use meaningful variable names**: `filename` not `f`

## Common Mistakes to Avoid

❌ Spaces around `=` in variable assignment:
```bash
name = "Alice"  # WRONG
name="Alice"    # CORRECT
```

❌ Forgetting to quote variables:
```bash
if [ $name = "Alice" ]; then  # Can break if name has spaces
if [ "$name" = "Alice" ]; then  # CORRECT
```

❌ Using `;` instead of `then` on same line:
```bash
if [ condition ]; then  # CORRECT
```

## Quick Examples

### Example 1: Rename all .txt files to .md
```bash
#!/bin/bash
for file in *.txt; do
    mv "$file" "${file%.txt}.md"
done
```

### Example 2: Back up files with timestamp
```bash
#!/bin/bash
timestamp=$(date +%Y%m%d_%H%M%S)
cp important.txt "important_$timestamp.txt"
```

### Example 3: Process files in a directory
```bash
#!/bin/bash
for file in /path/to/files/*; do
    if [ -f "$file" ]; then
        echo "Processing: $file"
        # Do something with the file
    fi
done
```

## Resources

- **Test your scripts**: https://www.shellcheck.net/
- **Bash manual**: `man bash` in terminal
- **More examples**: https://tldp.org/LDP/abs/html/
