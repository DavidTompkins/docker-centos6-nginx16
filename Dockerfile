FROM dtompkins/docker-centos6-base:latest
MAINTAINER David Tompkins <tompkins@adobe.com>

# Install nginx repo
RUN rpm -Uvh --force http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm

# Install nginx from EPEL
RUN yum -y install --enablerepo=nginx \
  nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf && chown -R nginx:nginx /usr/share/nginx
RUN sed -i -e 's/^\s*server_name\s*\(.*\);$/server_name 0.0.0.0;/' /etc/nginx/conf.d/default.conf

ADD ./startup.sh /startup.sh
RUN chmod 755 /startup.sh

WORKDIR /etc/nginx
EXPOSE 80
EXPOSE 443

CMD ["/startup.sh"]
