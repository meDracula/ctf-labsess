FROM hightechsec/web-ctf-container:latest

COPY index.php /var/www/html/index.php

COPY --chmod=755 server.sh /
ENTRYPOINT ["/server.sh"]
