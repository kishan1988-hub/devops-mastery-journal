# Day 07 – Git & GitHub Fundamentals (DevOps Workflow)

**Date:** 2025-12-16  
**Week:** Week 02 – Version Control & Collaboration  

---

## 🎯 Today’s Focus

To build a **strong foundational understanding of Git and GitHub** from a DevOps perspective, focusing not just on commands but on:

- How Git tracks changes
- How professional workflows are followed
- How clean Git history impacts CI/CD, collaboration, and recruiter trust

The emphasis was on **intentional commits, clean diffs, and repository hygiene**.


---

## ✅ Tasks Completed

- Reviewed current Git repository state and branch status
- Inspected file-level changes using `git diff`
- Understood the difference between working directory, staging area, and commits
- Practised selective staging using `git add <file>`
- Created a clean, descriptive commit for Day 6 learning
- Verified commit history using `git log`
- Created and committed a `.gitignore` file following DevOps best practices
- Pushed clean commits to GitHub

---

## 🧠 Key Git Concepts Reinforced

### Git Tracks Files, Not Folders
- Git only tracks files that are explicitly added
- Empty folders do not exist in Git unless they contain tracked files

---

### Git States (Very Important)

| State | Meaning |
|-----|--------|
| Working Directory | File has changed locally |
| Staged | Change selected for commit |
| Committed | Change recorded in Git history |
| Pushed | Change published to remote repository |

Understanding these states prevents accidental commits and broken pipelines.

---

## 💻 Commands Practised

### Repository Status
```bash
git status
