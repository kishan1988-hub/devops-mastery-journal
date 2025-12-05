# Day 04 – Thursday – Users, Groups & Permissions
**Date:** 2025-12-04  
**Week:** Week 01 – Linux & Networking Fundamentals  

---

## 🎯 Today’s Focus
Understand how Linux models identity and access using **users, groups, ownership, and permissions**, and how restricted users behave.  
This knowledge directly applies to DevOps scenarios such as containers, EC2, CI/CD runners, and system service accounts.

---

## ✅ Tasks Completed

- Checked current user identity using `whoami` and `id`
- Viewed supplementary groups such as `sudo`, `adm`, and `lxd`
- Created a non-privileged user: `practice1`
- Verified UID, GID, and group membership of `practice1`
- Used `sudo -u` to simulate another user
- Tested restricted access (e.g., `/root` → permission denied)
- Observed Linux user isolation and privilege enforcement

---

## 💻 Commands Practised

### Identity & Groups
```bash
whoami
id
id practice1
