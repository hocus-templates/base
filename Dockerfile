FROM hocustemplates/base:latest

USER root
COPY ./user/build.sh /tmp/build.sh
RUN /tmp/build.sh && rm /tmp/build.sh

USER hocus
