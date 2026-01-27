# Instructor Notes: Intro to Scripting

## Preparation (Before the Session)

### Setup
- [ ] Test all example scripts on your machine
- [ ] Verify Python 3.x is available on participant computers
- [ ] Have slides ready and tested
- [ ] Print quick reference sheets (optional)
- [ ] Set up screen sharing if remote

### Materials Checklist
- [ ] Presentation slides loaded
- [ ] Example scripts tested
- [ ] Starter files ready to distribute
- [ ] Terminal/command prompt ready to demonstrate

## Teaching Tips

### Part 1: What is Scripting? (15 min)
- **Tip:** Start with relatable examples from research (renaming data files, processing images, etc.)
- **Common Question:** "Why not use Excel?" - Acknowledge Excel's usefulness but emphasize reproducibility and scalability
- **Engagement:** Ask participants to share repetitive tasks they currently do manually

### Part 2: Your First Script (20 min)
- **Tip:** Type the code live rather than copy-pasting. This helps beginners see the process
- **Common Pitfall:** File permissions - remind students to make scripts executable (`chmod +x script.sh` for Bash)
- **Demo Slowly:** Show how to navigate to the script directory and run it
- **Encouragement:** Celebrate the "Hello, World!" moment!

### Part 3: Practical Examples (30 min)
- **Pacing:** This is the most hands-on section. Budget time for troubleshooting
- **Strategy:** Walk through first example together, then let participants try the second with guidance
- **Be Ready For:**
  - Path/directory issues (absolute vs. relative paths)
  - Syntax errors (missing colons, parentheses)
  - File not found errors
- **Tip:** Have participants work in pairs if possible - peer learning is powerful

### Part 4: Best Practices (15 min)
- **Emphasize:** Comments are for your future self and collaborators
- **Show:** How to add a shebang line (`#!/usr/bin/env python3`)
- **Mention:** Version control briefly - this will be covered in depth in a future lesson
- **End Positively:** Recap what they've learned and encourage experimentation

## Common Questions & Answers

**Q: Which scripting language should I learn first?**
A: Python is great for beginners and widely used in research. Bash is useful for system tasks. Start with what solves your immediate problems.

**Q: How do I know if something should be automated?**
A: Rule of thumb: If you do it more than 3 times, consider automating it.

**Q: What if my script doesn't work?**
A: Read error messages carefully, use print/echo statements to debug, and search online (Stack Overflow is your friend!).

**Q: Can scripts be dangerous?**
A: Yes! Be careful with operations that delete or modify files. Always test on copies first.

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
