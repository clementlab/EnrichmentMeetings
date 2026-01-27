# Instructor Notes: Intro to Bash Scripting

> **Note for Instructors:** Use the checklists below to prepare for your session. Check off items as you complete them.

## Preparation (Before the Session)

### Setup
- [ ] Test all example bash and expect scripts on your machine
- [ ] Verify bash is available on participant computers (should be default on Unix/Linux/Mac)
- [ ] Verify expect is installed (`expect -v` or install with `apt-get install expect` / `brew install expect`)
- [ ] Have slides ready and tested
- [ ] Print bash cheat sheet (optional)
- [ ] Set up screen sharing if remote

### Materials Checklist
- [ ] Presentation slides loaded
- [ ] Example bash scripts tested (.sh files)
- [ ] Example expect script tested (.exp file)
- [ ] Starter files ready to distribute
- [ ] Terminal ready to demonstrate
- [ ] Sample data files available

## Teaching Tips

### Part 1: Introduction to Bash Scripting (15 min)
- **Tip:** Start with relatable examples from research (batch renaming files, organizing data, automating backups)
- **Common Question:** "Why bash instead of clicking?" - Emphasize reproducibility, automation of repetitive tasks, and scalability
- **Engagement:** Ask participants to share repetitive tasks they do in the terminal

### Part 2: Your First Bash Script (20 min)
- **Tip:** Type the code live rather than copy-pasting. This helps beginners see the process
- **Key Points to Emphasize:**
  - Shebang line (`#!/bin/bash`) - explain what it does
  - Making scripts executable (`chmod +x script.sh`)
  - Running scripts (`./script.sh` vs `bash script.sh`)
- **Demo Slowly:** Show how to create file, add shebang, make executable, and run
- **Encouragement:** Celebrate the "Hello, World!" moment!

### Part 3: Bash Scripting Fundamentals (25 min)
- **Pacing:** This is hands-on. Budget time for troubleshooting
- **Strategy:** Walk through loops example together, then let participants try conditionals with guidance
- **Be Ready For:**
  - Syntax errors (spaces around =, missing quotes)
  - Path/directory issues (relative vs. absolute paths)
  - File permission errors
  - Glob patterns not matching files
- **Tip:** Have participants work in pairs if possible - peer learning is powerful
- **Common Gotcha:** Spaces in filenames - demonstrate why quoting variables is essential

### Part 4: Expect for Interactive Automation (20 min)
- **Context:** Explain when expect is useful vs. when bash alone is sufficient
- **Live Demo:** Show the expect script automating an interactive program
- **Key Concepts:**
  - `spawn` starts the program
  - `expect` waits for specific text
  - `send` responds (always end with `\r`)
  - `expect eof` waits for program to finish
- **Common Question:** "When should I use expect?" - Interactive programs you can't control (SSH, FTP, installations)
- **Security Note:** Mention that hardcoding passwords is risky; use environment variables or secure vaults

### Part 5: Best Practices & Next Steps (10 min)
- **Emphasize:** Comments are for your future self and collaborators
- **Show:** Debugging with `bash -x`  
- **Show:** Error handling with `set -e`
- **Mention:** Version control briefly - this will be covered in depth in a future lesson
- **End Positively:** Recap what they've learned and encourage daily use

## Common Questions & Answers

**Q: Do I need to know programming to learn bash scripting?**
A: No! Bash scripting is actually a great introduction to programming concepts. Start simple and build up.

**Q: When should I use bash vs. Python or other languages?**
A: Use bash for file operations, system tasks, and chaining command-line tools. Use Python for complex data processing or when you need libraries.

**Q: What's the difference between `./script.sh` and `bash script.sh`?**
A: `./script.sh` runs the script using the interpreter specified in the shebang. `bash script.sh` explicitly uses bash. The first requires executable permissions (`chmod +x`).

**Q: Why do I get "Permission denied" errors?**
A: The script isn't executable. Run `chmod +x script.sh` first.

**Q: What if my script doesn't work?**
A: Run with `bash -x script.sh` to see each command as it executes. Check for syntax errors and missing quotes around variables.

**Q: When should I use expect?**
A: When you need to automate interactive programs that prompt for input (SSH, FTP, installations). For non-interactive tasks, use bash.

**Q: Is it safe to put passwords in expect scripts?**
A: No! Use environment variables, command-line arguments, or secure credential managers instead of hardcoding passwords.

## Timing Adjustments

**If Running Short on Time:**
- Skip some theory in Part 1, focus on hands-on
- Reduce from 3 exercises to 2
- Make Part 4 a handout instead of discussion

**If You Have Extra Time:**
- Add a fourth exercise (more advanced)
- Live-code a script based on participant suggestions
- Discuss debugging strategies in more depth
- Q&A session

## Follow-Up

### After the Session
- Share all materials via repository
- Send link to additional resources
- Encourage participants to share their first automation script
- Collect feedback for improving future sessions

### Assignment Ideas (Optional)
- Write a script to organize your research files
- Automate a data processing task from your current project
- Share your script with the group for feedback

## Extension Ideas

For participants who finish early or want more challenge:
1. Add error handling to their scripts
2. Accept command-line arguments
3. Process multiple files in a loop
4. Generate a simple report or log file

## Accessibility Notes

- Ensure code is visible with sufficient font size
- Provide materials in accessible formats
- Pause frequently for questions
- Offer one-on-one help after session for those who need it
