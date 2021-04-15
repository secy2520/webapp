FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get upgrade && apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get install -y php
RUN apt-get install -y libapache2-mod-php
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y php 
RUN apt-get install -y php-dev 
RUN apt-get install -y php-mysql 
RUN apt-get install -y libapache2-mod-php 
RUN apt-get install -y php-curl 
RUN apt-get install -y php-json 
RUN apt-get install -y php-common 
RUN apt-get install -y php-mbstring 
RUN apt-get install -y composer
RUN apt-get install -y software-properties-common
RUN apt-get install -y apache2
RUN apt-get install -y zip
RUN apt-get install -y unzip
RUN unzip 
COPY ./bloofoxCMS_0.3.5 /var/www/html/bloofoxCMS
COPY ./apache2.conf /etc/apache2/apache2.conf 
RUN apt-get install -y  mysql-server

RUN exit
EXPOSE 80
EXPOSE 443
