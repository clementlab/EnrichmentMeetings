# intro_to_scripting Folder Contents

This document provides an overview of all folders and files in the `intro_to_scripting` lesson directory.

## Directory Structure

```
intro_to_scripting/
├── cheat_sheets/
├── examples/
│   ├── bashrc/
│   ├── logging/
│   │   └── logs/
│   │       ├── project1/
│   │       │   ├── tool1/
│   │       │   ├── tool2/
│   │       │   └── tool3/
│   │       └── project2/
│   │           ├── tool1/
│   │           ├── tool2/
│   │           └── tool3/
│   ├── projects/
│   ├── scratch_space/
│   ├── slurm/
│   └── ssh/
├── practice/
├── presentations/
└── real_scripts/
    └── slurm/
```

---

## Folder Contents

### `cheat_sheets/`

Reference materials for bash and expect scripting.

**Files:**
- `bash-cheat-sheet.md` - Bash scripting reference guide
- `expect-cheat-sheet.md` - Expect scripting reference guide

---

### `examples/`

Example scripts and demonstrations for various scripting concepts.

**Files:**
- `example_scripts.ipynb` - Jupyter notebook with example scripts

#### `examples/bashrc/`

Example bashrc configuration files.

**Files:**
- `custom.sh` - Custom bash configuration script

#### `examples/logging/`

Examples of logging and log management.

**Files:**
- `watch_logs.sh` - Script to watch/monitor log files
- `write_logs.sh` - Script to generate log entries

##### `examples/logging/logs/`

Directory containing example log files organized by project and tool.

**Structure:**
- `project1/`
  - `tool1/example.log`
  - `tool2/example.log`
  - `tool3/example.log`
- `project2/`
  - `tool1/example.log`
  - `tool2/example.log`
  - `tool3/example.log`

#### `examples/projects/`

Project setup examples.

**Files:**
- `setup.sh` - Project setup script

#### `examples/scratch_space/`

Scratch space for testing scripts.

**Files:**
- `touch_files.sh` - Script to create test files

#### `examples/slurm/`

SLURM job scheduler examples.

**Files:**
- `configs.txt` - Configuration examples
- `demo.py` - Python demo script for SLURM
- `demo.slurm` - SLURM job script example
- `run_slurm.sh` - Script to submit SLURM jobs
- `watch_squeue.sh` - Script to monitor SLURM queue

#### `examples/ssh/`

SSH automation examples.

**Files:**
- `ssh.exp` - Expect script for SSH automation

---

### `practice/`

Practice exercises for scripting concepts.

**Files:**
- `ask_me.sh` - Interactive practice script
- `practice.key.exp` - Answer key (expect script)
- `practice.key.sh` - Answer key (bash script)

---

### `presentations/`

Presentation materials for the lesson.

**Files:**
- `scripting.pptx` - PowerPoint presentation on scripting

---

### `real_scripts/`

Real-world scripts used in production or research environments.

**Files:**
- `request_gpu.sh` - Script to request GPU resources
- `ssh.exp` - SSH automation expect script
- `update_environment_yaml.sh` - Script to update environment YAML files
- `watch_logs.sh` - Log monitoring script

#### `real_scripts/slurm/`

Production SLURM scripts.

**Files:**
- `methylation_comparator.slurm` - SLURM job for methylation comparison
- `run_pathway.py` - Python script for pathway analysis
- `run_slurm.sh` - Script to submit SLURM jobs

---

## Summary

- **Total Directories:** 22
- **Total Files:** 31
- **Primary Categories:**
  - Cheat sheets and reference materials
  - Example scripts for learning
  - Practice exercises
  - Real-world production scripts
  - Presentation materials

## File Types

- `.sh` - Bash shell scripts (executable)
- `.exp` - Expect scripts for automation
- `.py` - Python scripts
- `.slurm` - SLURM job submission scripts
- `.md` - Markdown documentation
- `.txt` - Text configuration files
- `.ipynb` - Jupyter notebooks
- `.pptx` - PowerPoint presentations
- `.log` - Log files

