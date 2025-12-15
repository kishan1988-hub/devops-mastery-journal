# Day 05 – Friday – Permissions Deep Dive (chmod, chown, SUID & Sticky Bit)

**Date:** 2025-12-05  
**Week:** Week 01 – Linux & Networking Fundamentals  

---

## 🎯 Today’s Focus

Deep dive into Linux file permissions and ownership, covering:

- Numeric and symbolic `chmod`
- File ownership with `chown` and `chgrp`
- Sticky bit behavior on shared directories
- SUID (SetUID) using a real compiled binary

These concepts are critical for debugging permission issues in servers, containers, CI/CD pipelines, and system services.

---

## ✅ Tasks Completed

- Practised permission changes using numeric modes (`600`, `644`, `755`)
- Practised symbolic permission changes (`u`, `g`, `o`, `a` with `+` and `-`)
- Analysed sticky bit behavior on `/tmp`
- Changed file ownership using `chown` and `chgrp`
- Created a non-privileged user to simulate real-world access
- Compiled and executed a SUID-enabled binary to observe privilege escalation

---

## 💻 Commands Practised

### Inspect Sticky Bit on /tmp
```bash
ls -l /tmp
ls -ld /tmp
