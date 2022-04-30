FROM centos:7
RUN yum install httpd \
    unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/careo.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip careo.zip
RUN cp -rvf careo/* .
RUN rm -rf careo.zip careo
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
