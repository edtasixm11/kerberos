# @edt ASIX-M11 Curs 2017-2018
# khost
# Host client amb autenticació PAM kerberos
# -----------------------------------------
FROM fedora:24
MAINTAINER asixm11@edt "@edt ASIX-M11 Curs 2017-2018"
#RUN dnf -y update vi
#RUN dnf -y install vim procps iputils iproute tree nmap mlocate man-db 
RUN dnf -y install krb5-libs krb5-workstation pam_krb5 passwd finger util-linux-user
RUN mkdir /opt/docker
COPY * /opt/docker/
COPY krb5.conf /etc/krb5.conf
COPY chfn /etc/pam.d/chfn
COPY login /etc/pam.d/login
COPY system-auth /etc/pam.d/system-auth
RUN echo "CHFN_RESTRICT = yes" >> /etc/login.defs
RUN useradd pere
RUN useradd anna
RUN useradd marta
RUN useradd pau
RUN useradd julia
RUN useradd jordi
WORKDIR /opt/docker 
CMD ["/bin/bash"]

