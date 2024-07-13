FROM ubuntu:24.10

# Add flag to root
COPY flag.txt /root/flag.txt

# Install requirements
RUN apt update && apt install openssh-server sudo -y

# Add a user for ssh
RUN useradd -rm -d /home/steve -s /bin/bash -g root -G sudo -u 1001 steve 

 # Assign a password to the user for ssh
RUN echo 'steve:qwertyuiop' | chpasswd

WORKDIR /home/steve

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
