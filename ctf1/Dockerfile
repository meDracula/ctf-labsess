FROM ubuntu:24.10

# Add flag to root
COPY flag.txt /root/flag.txt

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN useradd -M steve # Add a user for ssh
RUN echo 'steve:qwertyuiop' | chpasswd # Assign a password to the user for ssh

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Remove read and executable permissions for the user.
RUN chmod go-rx /usr/bin/passwd

# Configure default ssh shell as bash
RUN chsh -s /bin/bash steve
# Define jailer as a recognised ssh user
RUN echo "Match User steve" >> /etc/ssh/sshd_config
# Define the chroot directory to be sshed into
RUN echo "  ChrootDirectory /steve" >> /etc/ssh/sshd_config
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
