FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install net-tools
RUN service apache2 start
RUN apt-get -y install git
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/abdullah051033/HTML-personal-Site.git /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"] 
