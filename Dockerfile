FROM ubuntu:20.04

# Install
RUN \
  apt-get update && \
  apt-get -y dist-upgrade && \
  apt-get install -y samba samba-common libnss-winbind winbind

VOLUME ["/etc", "/var/cache/samba", "/var/lib/samba", "/var/log/samba",\
        "/run/samba"]

ENTRYPOINT ["smbd", "--foreground", "--log-stdout", "--no-process-group"]
CMD []
