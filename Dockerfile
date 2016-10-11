FROM python:3.5.2-slim
MAINTAINER Valudio <development@valudio.com>

ADD ./files /opt/oracle

RUN apt-get update \
    && apt-get -y install unzip libaio1 curl make g++ \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get -y install nodejs

RUN cd /opt/oracle && sh start.sh

EXPOSE 8066
WORKDIR /opt/app

CMD ["bash"]
