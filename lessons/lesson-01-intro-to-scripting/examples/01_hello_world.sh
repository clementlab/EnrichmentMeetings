#!/bin/bash
# Example 1: Hello World Script
#
# This is the simplest possible bash script. It demonstrates:
# - Basic script structure
# - The shebang line (#!/bin/bash)
# - Echo command for output
# - Comments

# Print a simple message
echo "Hello, World!"
echo "Welcome to bash scripting!"

# You can also use variables
name="Researcher"
echo "Hello, $name!"

# Command substitution - get current date
current_date=$(date +%Y-%m-%d)
echo "Today's date is: $current_date"
