# Day 03 – Wednesday – Linux Networking Basics

**Date:** 2025-02-19  
**Week:** Week 01 – Linux & Networking Fundamentals  

---

## 🎯 Today’s Focus

To build a practical understanding of Linux networking: interfaces, IP addresses, routing, open ports, connectivity, DNS resolution, and basic SSH logging — the foundation for EC2, Docker, Kubernetes, and general infrastructure troubleshooting.

---

## ✅ Tasks Completed

- [x] Inspected network interfaces and IP assignments using `ip a`  
- [x] Analysed routing table with `ip route`  
- [x] Listed open listening ports using `ss -tulnp`  
- [x] Verified outbound internet connectivity with `ping`  
- [x] Performed DNS lookups using `dig`  
- [x] Inspected SSH daemon logs using `journalctl -u ssh`  
- [x] Confirmed SSH key-based login events from host to VM  

---

## Commands Practised

###  Interface & IP visibility
```bash
ip a
ip -br a

### Routing

ip route

### Open Ports & Services

ss -tulnp
ss -lntp | grep 22


### Connectivity & DNS

ping -c 4 8.8.8.8
dig google.com


### SSH Logs & Sessions

journalctl -u ssh -n 20
who
last -a | head


### All active SSH Sessions

last -a | head

This shows who and from which IP have they logged in & when was it - gives sufficient information for review.

## Key Learnings

    * Every Linux host has a loopback interface (lo) and at least one real NIC (enp0s1 in this VM).

    * The assigned IP 192.168.64.2/24 sits behind a local virtual network managed by UTM, similar to how EC2 sits inside a VPC.

    * The default route (default via 192.168.64.1) defines where non-local traffic goes — in this case, through a virtual router     on   the host.

    * ss -tulnp is a powerful replacement for netstat and clearly shows which services are listening on which ports.

    * SSH (sshd) is bound to port 22 on both IPv4 and IPv6 (0.0.0.0:22, [::]:22), enabling access from the host.

    * Successful SSH key-based logins appear as Accepted publickey for <user> from <IP>, which is crucial for debugging auth and security.

    * DNS is handled by systemd-resolved via 127.0.0.53, which then forwards requests to upstream DNS servers.

    * dig gives detailed DNS resolution info (A-records, TTL, query time) that’s very useful in microservice and API debugging.