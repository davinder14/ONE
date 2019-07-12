FROM centos:latest
RUN yum install -y httpd
RUN sed -i 's/#ServerName.*$/ServerName\ localhost/' /etc/httpd/conf/httpd.conf
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/httpd", "-DFOREGROUND" ]
