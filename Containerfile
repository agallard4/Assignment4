FROM fedora
RUN dnf update -y --latest
RUN dnf install -yqq tuxpaint vim httpd
CMD cat myinfo.html > /var/www/html/
EXPOSE 80/tcp
RUN systemctl enable httpd
ENTRYPOINT ["/usr/sbin/httpd", "-DFPREGROUND"]