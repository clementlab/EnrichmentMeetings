#!/bin/bash
# Example 2: Create Project Directory Structure
#
# This script creates a standard directory structure for a research project.
# Demonstrates:
# - Variables
# - Directory creation with mkdir -p
# - Creating files
# - Conditional checks

# Define project name (can be passed as argument or set here)
PROJECT_NAME=${1:-"my_research_project"}

echo "Creating project structure for: $PROJECT_NAME"

# Create directory structure
# The -p flag creates parent directories as needed and doesn't error if they exist
mkdir -p "$PROJECT_NAME"/{data/{raw,processed},scripts,results/{figures,tables},docs}

echo "Created directories:"
echo "  $PROJECT_NAME/data/raw"
echo "  $PROJECT_NAME/data/processed"
echo "  $PROJECT_NAME/scripts"
echo "  $PROJECT_NAME/results/figures"
echo "  $PROJECT_NAME/results/tables"
echo "  $PROJECT_NAME/docs"

# Create a README file
cat > "$PROJECT_NAME/README.md" << 'EOF'
# Research Project

## Project Structure

- `data/`: Raw and processed data
  - `raw/`: Original, immutable data
  - `processed/`: Cleaned and transformed data
- `scripts/`: Analysis scripts and automation
- `results/`: Output from analyses
  - `figures/`: Generated plots and visualizations
  - `tables/`: Generated tables and summaries
- `docs/`: Documentation and notes

## Getting Started

1. Place your raw data in `data/raw/`
2. Write processing scripts in `scripts/`
3. Save results in `results/`

EOF

echo "Created: $PROJECT_NAME/README.md"
echo ""
echo "✅ Project structure for '$PROJECT_NAME' created successfully!"
echo ""
echo "To view the structure, run: tree $PROJECT_NAME"
