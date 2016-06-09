FROM library/httpd
MAINTAINER Kenneth Peiruza <kenneth@floss.cat>
# PHP Packages selected from top 25 Debian Package Popularity Contest: http://popcon.debian.org
# 
RUN sed -i "s/AllowOverride None/AllowOverride All/" /usr/local/apache2/conf/httpd.conf && \
rm /usr/local/apache2/htdocs/index.html
ADD webroot.tgz /usr/local/apache2/htdocs/
EXPOSE 80:80
