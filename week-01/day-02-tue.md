# Day 02 – Tuesday – systemd & Service Management

**Date:** 2025-02-18  
**Week:** Week 01 – Linux & Networking Fundamentals  

---

## 🎯 Today’s Focus
To understand Linux service lifecycle management using **systemd**, work with `systemctl` and `journalctl`, analyze unit files, debug service failures, and create a custom long-running service — essential for EC2, Docker hosts, Kubernetes nodes, and CI/CD runners.

---

## ✅ Tasks Completed

- [x] Verified systemd is PID 1 and controlling the init system  
- [x] Explored running services using `systemctl list-units`  
- [x] Practised starting, stopping, restarting services  
- [x] Inspected SSH service status and logs  
- [x] Used `journalctl` to view live logs and boot logs  
- [x] Created a custom Python service: `hello.service`  
- [x] Debugged “start-limit-hit” restart loop  
- [x] Fixed service by converting script into a long-running loop  
- [x] Cleaned up unit file warnings (“Assignment outside of section”)  

---

## 💻 Commands Practised

### Systemd Basics
```bash
ps -p 1 -o comm=
systemctl list-units --type=ser

### Service Management
sudo systemctl start ssh
sudo systemctl stop ssh
sudo systemctl restart ssh
sudo systemctl enable ssh
sudo systemctl disable ssh
systemctl status ssh

### Journalctl logging
journalctl -u hello -n 20
journalctl -u ssh -n 50
journalctl -f
journalctl -b
journalctl --since "15 minutes ago"

### custom systemd service
sudo systemctl daemon-reload
sudo systemctl reset-failed hello
sudo systemctl start hello
systemctl status hello
journalctl -u hello

### Python loop script
#!/usr/bin/python3
import time

while True:
    print("Hello DevOps! Service is running.")
    time.sleep(5)


## Key Learnings
* systemd is the authoritative service manager on modern Linux.

* A service that exits immediately triggers restart loops → start-limit-hit.

* Custom services must either:

    * run continuously

    * or specify Restart=no

* Logs for individual services are cleanly isolated under journalctl -u <service>.

* Unit files require proper structure:

    * [Unit], [Service], [Install]

    * Anything outside these is ignored (logged as “Assignment outside of section”).

* journalctl -b is extremely helpful for boot-time issue debugging.

* systemd uses cgroups to track resource usage — matches real production servers.

## Issues & Debugging

* Early version of hello.service exited instantly → systemd restart storm.

* systemd logged:

    * start-limit-hit

    * Failed with result 'start-limit-hit'

* Fixed by:

    Adding a long-running loop to the script.

    Setting Restart=no in service file.

    Cleaning stray characters in the unit file.

    Running systemctl daemon-reload + systemctl reset-failed.

## SystemD Unit file locations

* /lib/systemd/system -- standard systemd unit files (distro maintainer)
* /usr/lib/systemd/system --from locally installed packages
* /run/system/system -- transient unit files
* /etc/systemd/system -- this is where you put your custom unit files

