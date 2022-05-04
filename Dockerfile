FROM centos:7
RUN yum install httpd \
    unzip -y
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page278/zezmon.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip zezmon.zip
RUN cp -rvf site/* .
RUN rm -rf zezmon.zip site
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
