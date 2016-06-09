FROM library/httpd
MAINTAINER Kenneth Peiruza <kenneth@floss.cat>
# Minimal changes to httpd
RUN sed -i "s/AllowOverride None/AllowOverride All/" /usr/local/apache2/conf/httpd.conf && \
rm /usr/local/apache2/htdocs/index.html
# The exercise files
ADD webroot.tgz /usr/local/apache2/htdocs/
EXPOSE 80:80
