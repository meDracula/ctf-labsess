FROM ubuntu:24.10

# Install requirements
RUN apt update && apt install openssh-server sudo -y

# Add flag to root
COPY flag.txt /root/flag.txt

# Setup User Steve
# Add a user for ssh
RUN useradd -rm -d /home/steve -s /bin/bash -g root -G sudo -u 1001 steve 
 # Assign a password to the user for ssh
RUN echo 'steve:qwertyuiop' | chpasswd
# Working Directory
WORKDIR /home/steve

# Add 
COPY --chmod=440 sudoers /etc/sudoers

# Start SSH
RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
