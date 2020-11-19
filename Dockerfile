############################################################
# Dockerfile - Zenoss v4.2.5-2108-03c on Debian Wheezy
# https://github.com/syspimp/zenoss4-mariadb
# based on mcroth/docker-zenoss4
############################################################

FROM mariadb:5.5
MAINTAINER david taylor <dataylor@redhat.com>
# add the init scripts to run Zenoss v4.2.5
ADD docker-entrypoint-initdb.d/init.sh /docker-entrypoint-initdb.d/
ADD docker-entrypoint-initdb.d/*sql /tmp/
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3306
CMD ["mysqld"]
