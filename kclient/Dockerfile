# @edt ASIX-M11 Curs 2017-2018
# kserver
# servidor kerberos
# --------------------------------
FROM fedora:24
MAINTAINER asixm11@edt "@edt ASIX-M11 Curs 2017-2018"
#RUN dnf -y update vi
#RUN dnf -y install vim procps iputils iproute tree nmap mlocate man-db 
RUN dnf -y install krb5-libs krb5-workstation
RUN mkdir /opt/docker
COPY * /opt/docker/
COPY krb5.conf /etc/krb5.conf
WORKDIR /opt/docker 
CMD ["/bin/bash"]

