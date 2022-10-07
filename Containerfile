FROM fedora:latest
RUN dnf -yqq install tuxpaint vim httpd
COPY myinfo.html /var/www/html
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
EXPOSE 80
