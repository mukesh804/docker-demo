FROM centos:7
RUN yum install httpd \
    unzip -y
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page277/royal.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip royal.zip
RUN cp -rvf royal/* .
RUN rm -rf royal.zip royal
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
