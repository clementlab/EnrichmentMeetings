#!/bin/bash
# Exercise 1: Create Your Own Project Structure
#
# TODO: Complete this script to create a project directory structure.
#
# Instructions:
# 1. Modify the script to create folders for YOUR research project
# 2. Add any additional folders you need
# 3. Create a README.md file in the project root
# 4. Run the script and verify the structure was created
#
# Hints:
# - Use mkdir -p to create directories (won't error if exists)
# - Use { } to create multiple directories at once
# - Use cat > file << 'EOF' to create multi-line files

# TODO: Set your project name here
PROJECT_NAME="my_project"

echo "Creating project structure for: $PROJECT_NAME"

# TODO: Create your directory structure here
# Example: mkdir -p "$PROJECT_NAME"/{data,scripts,results}

# TODO: Create a README.md file in the project root
# Hint: Use cat > "$PROJECT_NAME/README.md" << 'EOF'

echo "✅ Project structure created!"
