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
Privilege escalation is using a design flaw, misconfiguration or bug to gain unauthorized privileged access into a system.

There are two primary types of privilege escalation:
1. Horizontal privilege escalation, gaining access to accounts with privileges similar to the original compromised account.
2. Vertical privilege escalation, a user account with more privileges to the compromised lower-level account.

Privilege escalation often with Linux is the goal to gain `root` access to full compromise the system.
But knowing what the exploit is, always requires research into the compromised system and its design and configuration.

One tool often found and worth looking at for this CTF would be `sudo`.

### Sudo
Sudo - "execute a command as another user" [man sudo](https://www.man7.org/linux/man-pages/man8/sudo.8.html).
Sudo provides a user to run a command default configuration is to run as root.
Sudo is configured in a file called [sudoers](https://www.man7.org/linux/man-pages/man5/sudoers.5.html) default location `/etc/sudoers`.

When looking for privileges escalations on Linux binaries a good easy to use search engine would be: [GTFOBins](https://gtfobins.github.io/).

## Resources
- [YT: Network Port Explained](https://www.youtube.com/watch?v=g2fT-g9PX9o)
- [CrowdStrike Privilege Escalation](https://www.crowdstrike.com/cybersecurity-101/privilege-escalation/)
- [Sudoers](https://www.man7.org/linux/man-pages/man5/sudoers.5.html)
- [GTFOBins](https://gtfobins.github.io/)
- [man sudo](https://www.man7.org/linux/man-pages/man8/sudo.8.html)
