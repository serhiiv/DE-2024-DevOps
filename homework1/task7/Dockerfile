FROM ubuntu:24.04

# Install SSH server
RUN apt-get update \ 
    && apt-get install -y openssh-server \
    && apt-get install -y iputils-ping

# Create user
RUN useradd -m -s /bin/bash sshuser
RUN echo 'sshuser:sshpass' | chpasswd

# Allow SSH access
RUN mkdir /var/run/sshd
EXPOSE 22

# Start SSH server on container startup
CMD ["/usr/sbin/sshd", "-D"]