#!/usr/bin/env bash

apt install -y gnupg2 libjemalloc1; \
    cd /tmp; \
    wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb;  \
    dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb; \
    percona-release setup ps80; \
    apt update; \
    apt-get install -y percona-server-server; \
    #service mysql stop; chmod 755 /var/lib/mysql;  \
    #cd /var/lib/mysql; sudo rm ib*; \
    #sudo chmod 750 /var/lib/mysql; \
    #cd /etc/mysql/percona-server.conf.d/; \
    #sudo mv mysqld.cnf mysqld.cnf.bak; \
    #sudo wget -O mysqld.cnf https://raw.githubusercontent.com/gslin/mysql-template/master/mysql-5.7.cnf; \
    #sudo mkdir /srv/tmp; \
    #sudo chmod 1777 /srv/tmp; \
    sudo service mysql start
