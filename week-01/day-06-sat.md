# Day 06 – Bash Scripting Fundamentals

**Date:** 2025-12-16  
**Week:** Week 01 – Bash & Automation Basics  

---

## 🎯 Today’s Focus

Introduction to Bash scripting fundamentals with a strong emphasis on:

- Script structure and execution
- Variables and command substitution
- Exit codes and error handling
- Writing and debugging a real utility script

The goal was to move from running commands manually to **automating logic in scripts**, which is core to DevOps work.

---

## ✅ Tasks Completed

- Created and executed a Bash script using proper shebang
- Understood why scripts need execute permission (`chmod +x`)
- Used variables to make scripts reusable
- Captured command output using command substitution
- Checked command exit codes using `$?`
- Built and debugged a disk usage monitoring script
- Identified and fixed common Bash scripting errors

---

## 💻 Scripts & Commands Practised

### Basic Script Structure
```bash
#!/bin/bash
set -e

echo "Hello DevOps"
echo "Today is Day 6"
