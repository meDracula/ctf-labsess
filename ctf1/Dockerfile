FROM ubuntu:24.10

# Install requirements
RUN apt update && apt install openssh-server sudo -y

# Add flag to root
COPY flag.txt /root/flag.txt

# Setup User Steve
# Add a user for ssh
RUN useradd -rm -d /home/brutus -s /bin/bash -g root -G sudo -u 1001 brutus 
 # Assign a password to the user for ssh
RUN echo 'brutus:qwertyuiop' | chpasswd
# Working Directory
WORKDIR /home/brutus

# Add 
COPY --chmod=440 sudoers /etc/sudoers

# Start SSH
RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
