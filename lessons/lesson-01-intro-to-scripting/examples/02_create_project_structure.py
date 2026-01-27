#!/usr/bin/env python3
"""
Example 2: Create Project Directory Structure

This script creates a standard directory structure for a research project.
Demonstrates:
- Working with directories
- Using os module
- Creating multiple folders at once
"""

import os

def create_project_structure(project_name):
    """Create a standard research project directory structure."""
    
    # Define the folders we want to create
    folders = [
        f"{project_name}",
        f"{project_name}/data/raw",
        f"{project_name}/data/processed",
        f"{project_name}/scripts",
        f"{project_name}/results/figures",
        f"{project_name}/results/tables",
        f"{project_name}/docs",
    ]
    
    # Create each folder
    for folder in folders:
        os.makedirs(folder, exist_ok=True)
        print(f"Created: {folder}")
    
    # Create a README file in the project root
    readme_path = f"{project_name}/README.md"
    with open(readme_path, 'w') as f:
        f.write(f"# {project_name}\n\n")
        f.write("## Project Structure\n\n")
        f.write("- `data/`: Raw and processed data\n")
        f.write("- `scripts/`: Analysis scripts\n")
        f.write("- `results/`: Figures and tables\n")
        f.write("- `docs/`: Documentation\n")
    print(f"Created: {readme_path}")
    
    print(f"\n✅ Project structure for '{project_name}' created successfully!")

def main():
    # You can change this to any project name
    project_name = "my_research_project"
    create_project_structure(project_name)

if __name__ == "__main__":
    main()
