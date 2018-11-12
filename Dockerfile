FROM ubuntu:18.04
EXPOSE 20 21
RUN apt update && apt install -y vsftpd ftp nano
RUN adduser --disabled-password useron
#RUN mkdir /var/share/
#RUN touch /var/share/empty
#RUN echo secure_chroot_dir=/var/share/empty >> /etc/vsftpd.conf
ADD vsftpd.conf /etc/vsftpd.conf
CMD /usr/sbin/vsftpd

