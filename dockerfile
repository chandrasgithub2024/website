FROM ubuntu
RUN apt get-update
RUN install apache2 -y
ADD . /var/www.html/
ENTRYPOINT apachectl -D FOREGROUND
