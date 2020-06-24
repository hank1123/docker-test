FROM centos:7  
 
MAINTAINER lbt
 
ENV CODE_DIR=/opt/nsfocus
ENV DOCKER_SCRIPTS=$CODE_DIR/base_image/scripts
 
COPY ./scripts/* $DOCKER_SCRIPTS/

RUN chmod a+x $DOCKER_SCRIPTS/*
RUN $DOCKER_SCRIPTS/provision.sh
