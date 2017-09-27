#!/bin/sh

ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa && \
ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa && \
ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa && \
ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519 
usr/sbin/sshd

# Default exec
EXEC=${EXEC:-bash}

# Exec ARGS or EXEC
exec ${@:-$EXEC}
