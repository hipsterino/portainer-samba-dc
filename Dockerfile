FROM ubuntu:20.04

# Install
RUN \
  apt-get update && \
  apt-get -y dist-upgrade && \
  apt-get install -y samba samba-common libnss-winbind winbind

ENTRYPOINT ["smbd", "--foreground", "--log-stdout", "--no-process-group"]
CMD []
