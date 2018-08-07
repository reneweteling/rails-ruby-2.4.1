FROM ruby:2.4.1
MAINTAINER Rene Weteling <rene@weteling.com>

ENV APP_HOME=/var/www/app \
  BUNDLE_JOBS=4

# Update and install packages
RUN apt-get update -qq && \
  apt-get install -y build-essential libpq-dev nodejs wget fontconfig curl libtag1-dev cron vim python-pip python-dev jq && \
  pip install awscli

# Install docker
RUN  curl -L -o /tmp/docker-17.03.0-ce.tgz https://get.docker.com/builds/Linux/x86_64/docker-17.03.0-ce.tgz && \
  tar -xz -C /tmp -f /tmp/docker-17.03.0-ce.tgz && \
  mv /tmp/docker/* /usr/bin

# Issue with cron deamon: http://stackoverflow.com/a/21928878/1485992
RUN cat /etc/pam.d/cron | grep -v pam_loginuid.so > /etc/pam.d/cron2 && mv /etc/pam.d/cron2 /etc/pam.d/cron

# Copied cause the bitbucket is slow
# https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
# https://s3-eu-west-1.amazonaws.com/revolve-devops/software/phantomjs-2.1.1-linux-x86_64.tar.bz2
# http://www.weteling.com/z-files/phantomjs-2.1.1-linux-x86_64.tar.bz2

RUN cd /tmp && \
  # Wkhtml2pdf
  wget --quiet https://downloads.wkhtmltopdf.org/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz && \
  tar -xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz && \
  mv wkhtmltox/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf && \
  chmod +x /usr/local/bin/wkhtmltopdf && \
  # Phantomjs
  wget --quiet https://s3-eu-west-1.amazonaws.com/revolve-devops/software/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
  tar -xjf phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
  mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs && \
  chmod +x /usr/local/bin/phantomjs && \
  # Cleanup
  rm -r /tmp/*
