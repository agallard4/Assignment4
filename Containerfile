FROM fedora
RUN dnf update -y
RUN dnf install -yqq tux-paint vim httpd
CMD cat myinfo.html > /var/www/html/
EXPOSE 80/tcp
RUN httpd
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
