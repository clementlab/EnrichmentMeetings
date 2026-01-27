#!/usr/bin/env python3
"""
Exercise 1: Create Your Own Project Structure

TODO: Complete this script to create a project directory structure.

Instructions:
1. Modify the create_project_structure() function to create folders for YOUR project
2. Add any additional folders you need for your research
3. Create a README.md file in the project root
4. Run the script and verify the structure was created

Hints:
- Use os.makedirs() to create directories
- Use exist_ok=True to avoid errors if folder already exists
- Use a with statement to safely write to files
"""

import os

def create_project_structure(project_name):
    """
    Create a directory structure for your research project.
    
    TODO: Add your folder structure here!
    """
    
    # Example structure - modify this to fit your needs!
    folders = [
        # Add your folders here
        # Example: f"{project_name}/data"
    ]
    
    # TODO: Create the folders
    
    # TODO: Create a README.md file
    
    print(f"Project structure for '{project_name}' created!")

def main():
    # TODO: Change this to your project name
    project_name = "my_project"
    create_project_structure(project_name)

if __name__ == "__main__":
    main()
