---
title: "HackTheBox - Meow (Starting Point - Tier 0)"
date: 2024-01-01
description: "Write-up for the Meow machine from HackTheBox's Starting Point series."
tags: ["hackthebox", "ctf", "starting-point", "tier-0"]
categories: ["CTF"]
draft: false
difficulty: "Easy"
points: 10
---

# HackTheBox - Meow (Starting Point - Tier 0)

## Machine Information

- **Name**: Meow
- **IP**: 10.129.1.1
- **Difficulty**: Easy
- **Points**: 10
- **Release**: 2021-07-19

## Enumeration

### Nmap Scan

Let's start with a basic nmap scan:

```bash
nmap -sV -sC 10.129.1.1
```

The scan reveals an open port:
- 23/tcp open  telnet

### Telnet Connection

We can connect to the machine using telnet:

```bash
telnet 10.129.1.1
```

## Exploitation

### Step 1: Initial Access

The telnet service allows us to connect without credentials. Once connected, we can see a welcome message and a prompt.

### Step 2: Finding the Flag

After some exploration of the system, we find the flag in a common location.

## Post-Exploitation

### Step 1: Reading the Flag

The flag is located in `/root/flag.txt`. We can read it using:

```bash
cat /root/flag.txt
```

## Conclusion

This machine was a good introduction to basic enumeration and exploitation techniques. It demonstrated the importance of checking default credentials and common misconfigurations.

## Lessons Learned

1. Always check for default credentials
2. Basic enumeration is crucial
3. Common misconfigurations can lead to easy access

## Additional Resources

- [HackTheBox Starting Point](https://www.hackthebox.com/starting-point)
- [Telnet Protocol](https://tools.ietf.org/html/rfc854) 