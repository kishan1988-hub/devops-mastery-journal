✅ Day 04 – Thursday – Users, Groups & Permissions

Date: 2025-12-04
Week: Week 01 – Linux & Networking Fundamentals

🎯 Today’s Focus

Understand how Linux models identity and access using users, groups, ownership, and permissions, and how restricted users behave.
This is essential for DevOps scenarios involving containers, EC2, CI/CD runners, and system services.

✅ Tasks Completed

Checked current user identity using whoami and id

Examined supplementary groups (sudo, adm, lxd)

Created a non-privileged user practice1

Verified UID/GID mappings for practice1

Used sudo -u to run commands as another user

Tested access boundaries (/root permission denied)

Understood Linux user isolation and privilege control

💻 Commands Practised
Identity & Group Information
whoami
id
id practice1

User Creation
sudo adduser practice1

Running Commands as Another User
sudo -u practice1 whoami
sudo -u practice1 ls /root

Optional Exploration
ls -ld /root
ls -ld /tmp
sudo -u practice1 touch /tmp/testfile_from_practice1
sudo -u practice1 ls -l /tmp/testfile_from_practice1

🧠 Key Learnings

Linux assigns each user:

a UID (user ID)

a primary group (GID)

optional supplementary groups

My user (kishan) has sudo, adm, and lxd privileges.

practice1 behaves exactly like a restricted system user or container user.

sudo -u <user> lets me simulate another user without logging in.

/root is protected (drwx------) and cannot be accessed by non-root users.

/tmp is world-writable (drwxrwxrwt) with sticky bit — shared but safe.

These permission principles map directly to:

Docker non-root containers

Kubernetes runAsUser, fsGroup

CI/CD workspace limitations

Systemd service users

🐞 Issues & Debugging Notes

Attempting to access /root as practice1 resulted in:

ls: cannot open directory '/root': Permission denied


This confirms that Linux enforces strong access boundaries between users, preventing unauthorized read or write access.

🔁 Next Steps (Day 5 Preview)

chmod numeric & symbolic modes

chown, chgrp

sticky bit, SUID, SGID

diagnosing real permission errors

optional: ACLs using getfacl and setfacl

🌟 Today’s Win

Successfully simulated real-world "permission denied" scenarios using a dedicated practice user — developing foundational Linux permission troubleshooting skills essential for DevOps.