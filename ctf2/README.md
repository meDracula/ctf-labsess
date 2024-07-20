# CTF 2: PHP Cracken

## Requirements
- [nmap](https://nmap.org/)
- [netcat](https://www.kali.org/tools/netcat/)
- [wordlists](https://www.kali.org/tools/wordlists/) -> rockyou.txt, dirb/common.txt
- [dirb](https://www.kali.org/tools/dirb/)

The CTF 2 is contains three smaller challenges.
To defeat the cracken capture the flag on all three.

This uses the container [HightechSec/web-ctf-container](https://github.com/HightechSec/web-ctf-container/tree/master)
to get the PHP 7.3 version and instilled apache2 on it. Thank you for creation!

## Web Content Discovery
Content regards many things, a file, video, picture, backup, a website feature.
The context of hacking content discovery, can see on a website; it's the things that aren't immediately presented and that weren't always intended for public access.

It could be a website with a site of `/assets` or `/admin`.

There are three main ways of discovering content on a website. Manually, Automated and OSINT (Open-Source Intelligence).
A good automated tool would be [dirb](https://www.kali.org/tools/dirb/) for web objects discovery.

## Authentication Bypass
Authentication bypass attacks are unique in that the attacker does not steal the credentials, but rather find a exploit to bypass the authentication process.

The process to finding the bypass always requires studying the authentication process closely.
With research of how the process works and searching if any vulnerabilities are tied with the specific method and the unique version might reveal a authentication bypass.

## Reverse Shell
A reverse shell is a switch of the traditional type of remote shell here a client connects to a server(think ssh) and executes commands.
But with a reverse shell the client connects to the server and the server tells the client what commands to execute.

The advantage is that the target machine doesn't need to be configured with exposing a new service port and must likely having to port forward on the firewall route.
Instead the attacker machine setup the server and exposes the service and the target machine connects to it as a client.

There are many reverse shell cheat sheet but here is a simple to read [one](https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet).
Otherwise for more look at [Internal All The Things - Reverse Shell Cheat Sheet](https://swisskyrepo.github.io/InternalAllTheThings/cheatsheets/shell-reverse-cheatsheet/).

### Netcat
A CLI for reads and writes data across network connections, using TCP or UDP protocols.

Netcat is a Swiss Army knife tool and can be easily configured to become a reverse shell.
By just specifying a its mode to listen for inbound `-l` and for more verbosity `-v` and running on port `-p <port>`
```sh
nc -lvp <port>
```

## Resources
- [Reverse shell cheat sheet](https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet)
- [Internal All The Things - Reverse Shell Cheat Sheet](https://swisskyrepo.github.io/InternalAllTheThings/cheatsheets/shell-reverse-cheatsheet/)
