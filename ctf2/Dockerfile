FROM hightechsec/web-ctf-container:latest

# Delete lines 15-21 from https://github.com/HightechSec/web-ctf-container/blob/master/Dockerfile
RUN rm -rf /var/www/html/admin \
    /var/www/html/otp \
    /var/www/html/numeric \
    /var/www/html/crack \
    /var/www/html/magic \
    /var/www/html/bypass \
    /var/www/html/index.php

# Main index page
COPY index.php /var/www/html/index.php
# Setup challange 1 Authentication Bypass
COPY admin /var/www/html/admin
# Setup challange 2 Path Traversal
COPY secret /var/www/html/secret
# Setup challange 3 Reverse Shell
COPY shell /var/www/html/shell/index.php

COPY --chmod=755 server.sh /
ENTRYPOINT ["/server.sh"]
