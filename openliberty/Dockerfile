FROM openjdk:9.0-jre
LABEL maintainer="Sebastian Daschner"

ENV RELEASE 2018-06-04_1421
ENV VERSION 20180604-1300

RUN wget https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/nightly/${RELEASE}/openliberty-all-${VERSION}.zip \
    && unzip openliberty-all-${VERSION}.zip -d /opt \
    && rm openliberty-all-${VERSION}.zip

ENV INSTALL_DIR /opt/wlp/
ENV CONFIG_DIR /opt/wlp/usr/servers/defaultServer/
ENV DEPLOYMENT_DIR /opt/wlp/usr/servers/defaultServer/dropins/

COPY server.xml $CONFIG_DIR

CMD ["/opt/wlp/bin/server", "run", "defaultServer"]