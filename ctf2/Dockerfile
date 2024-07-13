FROM hightechsec/web-ctf-container:latest

# Delete lines 15-21 from https://github.com/HightechSec/web-ctf-container/blob/master/Dockerfile
RUN rm -rf /var/www/html/admin \
    /var/www/html/otp \
    /var/www/html/numeric \
    /var/www/html/crack \
    /var/www/html/magic \
    /var/www/html/bypass \
    /var/www/html/index.php

COPY admin /var/www/html/admin
COPY secret /var/www/html/secret
COPY index.php /var/www/html/index.php

COPY --chmod=755 server.sh /
ENTRYPOINT ["/server.sh"]
