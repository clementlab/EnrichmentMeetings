# Scripting Quick Reference

## Python Basics

### Running a Python Script
```bash
python3 script.py
# or make it executable
chmod +x script.py
./script.py
```

### Basic Python Script Structure
```python
#!/usr/bin/env python3
# Description of what this script does

# Import statements
import os
import sys

# Your code here
def main():
    print("Hello, World!")

if __name__ == "__main__":
    main()
```

### Common Python Operations

#### Working with Files
```python
# Read a file
with open('file.txt', 'r') as f:
    content = f.read()

# Write to a file
with open('output.txt', 'w') as f:
    f.write("Hello, World!\n")

# List files in directory
import os
files = os.listdir('.')
for file in files:
    print(file)
```

#### Working with Directories
```python
import os

# Create a directory
os.makedirs('new_folder', exist_ok=True)

# Check if path exists
if os.path.exists('file.txt'):
    print("File exists")

# Get current directory
current_dir = os.getcwd()
```

#### String Operations
```python
# Concatenation
greeting = "Hello, " + "World!"

# Formatting
name = "Alice"
message = f"Hello, {name}!"

# Split and join
words = "hello world".split()  # ['hello', 'world']
sentence = " ".join(words)     # 'hello world'
```

## Bash Basics

### Running a Bash Script
```bash
bash script.sh
# or make it executable
chmod +x script.sh
./script.sh
```

### Basic Bash Script Structure
```bash
#!/bin/bash
# Description of what this script does

# Your commands here
echo "Hello, World!"
```

### Common Bash Operations

#### Variables
```bash
# Set variable
name="Alice"
# Use variable
echo "Hello, $name!"
```

#### File Operations
```bash
# Create directory
mkdir -p new_folder

# Copy files
cp source.txt destination.txt

# Move/rename files
mv old_name.txt new_name.txt

# Delete files (be careful!)
rm file.txt
```

#### Loops
```bash
# Loop through files
for file in *.txt; do
    echo "Processing $file"
done

# Loop with counter
for i in {1..5}; do
    echo "Number $i"
done
```

#### Conditionals
```bash
if [ -f "file.txt" ]; then
    echo "File exists"
else
    echo "File not found"
fi
```

## Helpful Commands

### Navigation
```bash
pwd          # Print working directory
ls           # List files
ls -la       # List files with details
cd folder    # Change directory
cd ..        # Go up one directory
cd ~         # Go to home directory
```

### File Inspection
```bash
cat file.txt       # Display file contents
head file.txt      # Show first 10 lines
tail file.txt      # Show last 10 lines
wc -l file.txt     # Count lines
```

### Getting Help
```bash
python3 --help     # Python help
man bash          # Bash manual
command --help    # Help for specific command
```

## Debugging Tips

1. **Use print statements** to see what's happening
   ```python
   print(f"Variable x is: {x}")
   ```

2. **Check your paths**
   ```python
   import os
   print(os.getcwd())  # Where am I?
   ```

3. **Read error messages carefully** - they usually tell you exactly what's wrong

4. **Test with simple data first** before running on all your files

5. **Comment out sections** to isolate problems
   ```python
   # print("This won't run")
   ```

## Best Practices

- ✅ Use descriptive variable names
- ✅ Add comments to explain why, not what
- ✅ Test scripts on sample data first
- ✅ Back up important files before running scripts
- ✅ Use version control (Git) for your scripts
- ❌ Don't hardcode paths (use variables)
- ❌ Don't skip error handling for critical operations
- ❌ Don't forget to document your scripts

## Resources

- **Python**: https://docs.python.org/3/
- **Bash**: https://www.gnu.org/software/bash/manual/
- **Stack Overflow**: https://stackoverflow.com/ (for troubleshooting)
