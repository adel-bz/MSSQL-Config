FROM php:8.2.0-apache

ENV DEBIAN_FRONTEND noninteractive
ENV ACCEPT_EULA=Y

WORKDIR /var/www/html

# Copy libltdl.la file for installing the MS ODBC Driver
COPY ./api/libltdl.la /usr/lib/x86_64-linux-gnu

# Install selected extensions and other stuff

RUN apt-get update \
    && apt-get -y --no-install-recommends install apt-utils libxml2-dev gnupg apt-transport-https \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install MS ODBC Driver for SQL Server
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list \
    && apt-get update \
    && apt-get -y --no-install-recommends install msodbcsql17 unixodbc-dev \
    && pecl install sqlsrv \
    && pecl install pdo_sqlsrv \
    && echo "extension=pdo_sqlsrv.so" >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/30-pdo_sqlsrv.ini \
    && echo "extension=sqlsrv.so" >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/30-sqlsrv.ini \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install PHP extensions
RUN docker-php-ext-install intl mysqli pdo pdo_mysql

# Apache Configs
COPY  ./api/vhost.conf.backend /etc/apache2/sites-available/000-default.conf
COPY ./api/apache2.conf /etc/apache2/apache2.conf
COPY . .
RUN a2enmod rewrite
