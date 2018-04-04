# @edt ASIX-M11 Curs 2017-2018
# kssh
# servidor SSH kerberos aware
# --------------------------------
FROM fedora:24
MAINTAINER asixm11@edt "@edt ASIX-M11 Curs 2017-2018"
#RUN dnf -y update vi
#RUN dnf -y install vim procps iputils iproute tree nmap mlocate man-db 
RUN dnf -y install krb5-libs krb5-workstation openssh openssh-server 
RUN mkdir /opt/docker
COPY * /opt/docker/
COPY krb5.conf /etc/krb5.conf
COPY krb5.keytab /etc/krb5.keytab
#RUN echo "kpau" | kadmin -q "ktadd -k /etc/krb5.keytab host/kssh" -p pau
COPY sshd_config  /etc/ssh/sshd_config
RUN useradd pere
RUN useradd anna
RUN useradd marta
RUN useradd pau
RUN useradd julia
RUN useradd jordi
RUN /usr/sbin/sshd-keygen -A
RUN rm /var/run/nologin
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker 
CMD ["/opt/docker/startup.sh"]

