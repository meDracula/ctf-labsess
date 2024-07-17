# CTF 1: SSH Brutus

## Requirements
- [Nmap](https://nmap.org/)
- [hydra](https://www.kali.org/tools/hydra/)
- [wordlists](https://www.kali.org/tools/wordlists/) -> rockyou.txt

## General techniques
- Port Scanning
- Brute Force
- Privilege escalation

## Port Scanning
Understanding Port scanning comes with knowing about computer networks and hosting services.
A great video to watch for this CTF would be [YT: Network Port Explained](https://www.youtube.com/watch?v=g2fT-g9PX9o) if a reminder is needed!

For Port Scanning the basic theory is this: a client will connect to each port of the target in turn.
Depending on how the port responds, it can be determined as being open, closed, or filtered (usually by a firewall).
If a port is determined to be open, then the next step is to look at enumerating which services are running on each port.

For this CTF the recommendation is the classic [Nmap](https://nmap.org/).

## Brute Force
A Brute force attack is a method of exhausting every possible item or combination in a list to guess the correct credentials.

Commonly used when brute forcing a user's password.
Such as attempting login in to a user by using a list of passwords to hopefully provide the correct credentials to gain access.

A tool great for login cracking that provides simple, flexible and parallelized brute force attacks is [Hydra](https://www.kali.org/tools/hydra/).
This tool supports multiple protocols but in this engagement, as the name of the CTF (SSH Brutus) can be guessed that it will be using SSH protocol.

## Privilege escalation
### Sudo
### External Resources
- [GTFOBins](https://gtfobins.github.io/)
