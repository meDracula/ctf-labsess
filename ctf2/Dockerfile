FROM hightechsec/web-ctf-container:latest

# Delete lines 15-21 from https://github.com/HightechSec/web-ctf-container/blob/master/Dockerfile
RUN rm -rf /var/www/html/admin \
    /var/www/html/otp \
    /var/www/html/numeric \
    /var/www/html/crack \
    /var/www/html/magic \
    /var/www/html/bypass \
    /var/www/html/index.php \
    /main.sh

# Main index page
COPY index.php /var/www/html/index.php
# Setup challange 1 Authentication Bypass
COPY admin /var/www/html/admin
# Setup challange 2 Path Traversal
COPY secret /var/www/html/secret
# Setup challange 3 Reverse Shell
COPY shell/index.php /var/www/html/shell/index.php
COPY shell/flag.txt /root/flag.txt
COPY --chmod=755 shell/worker.sh /
COPY --chmod=777 shell/job.sh /home/job.sh

COPY --chmod=755 server.sh /
ENTRYPOINT ["/server.sh"]
