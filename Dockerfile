FROM debian:bullseye
MAINTAINER Michael Stapelberg <michael+nas@stapelberg.ch>

RUN echo deb http://deb.debian.org/debian bullseye-backports main contrib non-free >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y -t bullseye-backports samba

ADD smb.conf /etc/samba/smb.conf

EXPOSE 137 138 139 445
CMD ["/usr/sbin/smbd", "--foreground"]
