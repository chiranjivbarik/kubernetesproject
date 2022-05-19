FROM centos:7
MAINTAINER chiranjivbarik03@gmail.com
RUN yum install -y httpd \
#RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 -y \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/hangover.zip /var/www/html
WORKDIR /var/www/html
RUN unzip hangover.zip
RUN cp -rvf hangover-master/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
