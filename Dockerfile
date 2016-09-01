FROM ubuntu:trusty

MAINTAINER Dockerfiles

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN add-apt-repository ppa:fkrull/deadsnakes
RUN apt-get update; apt-get -y upgrade

RUN apt-get -f install
RUN apt-get install -y build-essential git
RUN apt-get install -y python3 python3-dev python3-setuptools python-software-properties
RUN easy_install3 pip

# install uwsgi now because it takes a little while
RUN apt-get install libpcre3 libpcre3-dev
RUN pip install uwsgi

# Install some package specific libraries
RUN apt-get install -y libpq-dev libxml2-dev libxslt1-dev zlib1g-dev libffi-dev