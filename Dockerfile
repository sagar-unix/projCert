FROM devopsedu/webapp:latest
LABEL MAINTAINER="SAGAR BHOOSHAN" type="Edureka Devops Certification Project" version="1.0"

ENV TZ=Asia/Kolkata
SHELL ["/bin/bash", "-c"]
RUN apt-get update && \
    apt-get install -y php && \
    rm -f /var/www/html/index.html
COPY --chown=www-data:www-data website /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
