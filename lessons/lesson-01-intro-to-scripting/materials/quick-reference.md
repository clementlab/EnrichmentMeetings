# Bash and Expect Scripting Quick Reference

## Bash Scripting Basics

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

# Variables
name="value"

# Your commands here
echo "Hello, World!"
```

### Variables and Command Substitution

```bash
# Set variable (no spaces around =)
name="Alice"
age=25

# Use variable
echo "Hello, $name!"
echo "Age: ${age}"

# Command substitution
current_dir=$(pwd)
file_count=$(ls | wc -l)
today=$(date +%Y-%m-%d)

# Special variables
$0    # Script name
$1-$9 # Arguments 1-9
$#    # Number of arguments
$@    # All arguments
$?    # Exit status of last command
```

### File Operations

```bash
# Test if file exists
if [ -f "file.txt" ]; then
    echo "File exists"
fi

# Test if directory exists
if [ -d "directory" ]; then
    echo "Directory exists"
fi

# Create directories
mkdir -p path/to/directory
mkdir -p project/{data,scripts,results}

# Copy, move, delete
cp source.txt destination.txt
mv old_name.txt new_name.txt
rm file.txt
```

### Loops

```bash
# Loop through files
for file in *.txt; do
    echo "Processing $file"
done

# Loop with counter
for i in {1..5}; do
    echo "Number $i"
done

# While loop
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done

# Read file line by line
while IFS= read -r line; do
    echo "Line: $line"
done < input.txt
```

### Conditionals

```bash
# If statement
if [ condition ]; then
    # commands
elif [ other_condition ]; then
    # commands
else
    # commands
fi

# String comparison
if [ "$name" = "Alice" ]; then
    echo "Hello Alice"
fi

# Numeric comparison
if [ $age -gt 18 ]; then
    echo "Adult"
fi
# -eq equal, -ne not equal
# -lt less than, -le less or equal
# -gt greater than, -ge greater or equal

# Case statement
case "$choice" in
    1) echo "Option 1" ;;
    2) echo "Option 2" ;;
    *) echo "Unknown" ;;
esac
```

### Functions

```bash
# Define function
function greet() {
    local name=$1
    echo "Hello, $name!"
}

# Call function
greet "Alice"
```

### Input/Output

```bash
# Read user input
read -p "Enter your name: " name

# Redirect output to file
echo "Hello" > output.txt    # overwrite
echo "World" >> output.txt   # append

# Redirect errors
command 2> errors.txt
command > output.txt 2>&1    # both stdout and stderr
```

## Expect Scripting Basics

### Running an Expect Script
```bash
expect script.exp
# or make executable
chmod +x script.exp
./script.exp
```

### Basic Expect Script Structure
```expect
#!/usr/bin/expect -f
# Description

# Set timeout (seconds)
set timeout 30

# Spawn interactive program
spawn program_name

# Expect patterns and send responses
expect "prompt:"
send "response\r"

# Wait for program to finish
expect eof
```

### Common Expect Commands

```expect
# Spawn a program
spawn ssh user@hostname
spawn ./interactive_program

# Wait for and respond to prompts
expect "Password:"
send "mypassword\r"

# Multiple patterns
expect {
    "yes/no" { send "yes\r"; exp_continue }
    "Password:" { send "$password\r" }
    timeout { puts "Timeout!"; exit 1 }
}

# Variables
set username "alice"
set password "secret123"

# Command line arguments
set username [lindex $argv 0]
```

### Example: Automate SSH Login
```expect
#!/usr/bin/expect -f

set timeout 20
set hostname [lindex $argv 0]
set username [lindex $argv 1]
set password [lindex $argv 2]

spawn ssh $username@$hostname

expect {
    "yes/no" {
        send "yes\r"
        exp_continue
    }
    "assword:" {
        send "$password\r"
    }
}

expect "$"
send "ls -la\r"

expect "$"
send "exit\r"

expect eof
```

## Debugging

### Bash
```bash
# Run with debug output
bash -x script.sh

# In script
set -x  # Enable debugging
set +x  # Disable debugging

# Exit on error
set -e

# Exit on undefined variable
set -u
```

### Expect
```expect
# Enable diagnostic output
exp_internal 1

# Log interactions
log_file interaction.log
```

## Best Practices

### Bash
- ✅ Quote variables: `"$var"` not `$var`
- ✅ Use `#!/bin/bash` for bash features
- ✅ Check file existence before operations
- ✅ Use meaningful variable names
- ✅ Add comments for complex logic
- ❌ Don't parse `ls` output (use globs)

### Expect
- ✅ Set appropriate timeouts
- ✅ Handle multiple possible responses
- ✅ Don't hardcode passwords
- ✅ Use `expect eof` to wait for completion
- ❌ Don't use for non-interactive programs

## Common Patterns

### Process all files in directory
```bash
for file in /path/*.txt; do
    if [ -f "$file" ]; then
        echo "Processing: $file"
        # do something
    fi
done
```

### Command with error handling
```bash
if command; then
    echo "Success"
else
    echo "Failed: $?"
    exit 1
fi
```

### String replacement
```bash
# Replace first occurrence
echo ${string/old/new}

# Replace all occurrences
echo ${string//old/new}
```

## Resources

- **Bash Manual**: https://www.gnu.org/software/bash/manual/
- **Advanced Bash-Scripting**: https://tldp.org/LDP/abs/html/
- **Expect Documentation**: https://core.tcl-lang.org/expect/index
- **ShellCheck**: https://www.shellcheck.net/ (script checker)
