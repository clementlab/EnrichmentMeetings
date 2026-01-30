# Intro to Scripting

This repository provides an overview of scripting fundamentals. It explains what scripts are, why they matter, and how to begin using Bash and Expect for automation.

---

## Folder contents: 

- ### `cheat_sheets/`

Reference materials for bash and expect scripting.


- ### `examples/`

Example scripts and demonstrations for various scripting concepts.


- ### `practice/`

Practice exercises for scripting concepts.

- ### `presentations/`

Presentation materials for the lesson.

- ### `real_scripts/`

Real-world scripts used in production or research environments.

## What Is a Script?
A **script** is a list of commands written down and saved into a file, allowing tasks to run automatically.

---

## Benefits of Scripting
Scripts help improve workflow efficiency by:  
- Avoiding mistakes  
- Reducing typos  
- Preventing missed steps  
- Speeding up simple tasks  
- Simplifying complex workflows  
- Making work repeatable  
- Reducing mental load  

---

## Types of Scripts
Common scripting languages include:  
- **Bash**  
- **Expect**  
- **Python**  

---

## Tasks That Benefit from Scripting
Repetitive or error‑prone tasks often benefit from automation.  

## When *Not* to Script
Scripting is not ideal for:  
- One‑time commands  
- Highly exploratory analysis  
- Workflows already supported by strong tools  
- Cases where manual execution is faster  

---

## Example Scripts
Example Jupyter notebook scripts can be found here:  
[intro_to_scripting/examples/example_scripts.ipynb](intro_to_scripting/examples/example_scripts.ipynb)  


---

## Intro to Bash
Key points for Bash scripting:  
- Automates terminal commands  
- Uses the same commands you already run manually  
- Saved as `.sh` files  
- Executes top‑to‑bottom  

---

## Bash Basics Resource
Bash cheat sheet:  
[intro_to_scripting/cheat_sheets/bash-cheat-sheet.md](intro_to_scripting/cheat_sheets/bash-cheat-sheet.md)  

---

## Bash Configuration (`.bashrc`)
Notes on shell configuration:  
- `.bashrc` runs automatically when a terminal starts  
- Used to customize the shell environment  
- CHPC discourages large modifications to `.bashrc` to avoid breaking system behavior  
- Instead, use `custom.sh` — a Bash script sourced by `.bashrc`  

---

## Intro to Expect
Expect cheat sheet:  
[intro_to_scripting/cheat_sheets/expect-cheat-sheet.md](intro_to_scripting/cheat_sheets/expect-cheat-sheet.md)  


---
