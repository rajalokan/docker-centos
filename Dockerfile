FROM centos

MAINTAINER rajalokan@gmail.com

RUN \
# Point to use apt-cacher-ng proxy
  echo "proxy=http://192.168.2.183:3142" >> /etc/yum.conf

RUN \
# Update
  yum update \
# Install some basic packages
  && yum install -y vim
