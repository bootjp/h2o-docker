FROM docker.io/kjdev/fedora22:base
MAINTAINER oh@bootjp.me

RUN dnf install -y https://bitbucket.org/kjdev/fc22-rpms/raw/master/RPMS/noarch/kjdev-release-22-1.fc22.kjdev.noarch.rpm https://bitbucket.org/kjdev/fc22-rpms/raw/master/RPMS/noarch/kjdev-release-scl-22-1.fc22.kjdev.noarch.rpm && dnf clean all
RUN dnf install -y h2o php7-php-cgi php7-php-opcache && dnf clean all

EXPOSE 80 443

ADD ./h2o.conf /etc/h2o/h2o.conf
ADD ./data/ /n/app/
ADD ./keys/  /var/tmp/keys/
RUN  chown -R root:root /var/tmp/keys/

CMD /usr/bin/h2o -c /etc/h2o/h2o.conf