From centos:latest
MAINTAINER rakshit1226@hotmail.com
RUN yum install -y httpd /
   zip/
   unzip
ADD https://www.free-css.com/assets/files/free-css-template/download/page247/kindle.zip/var/www/html/
WORKDIR /var/www/htmlRUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zipCMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
