FROM centos:7
RUN yum install httpd \
    unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/cosmix.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip cosmix.zip
RUN cp -rvf cosmix/* .
RUN rm -rf cosmix.zip cosmix
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
