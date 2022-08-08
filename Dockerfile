FROM loroxxx/jpress-base:v1.4
LABEL maintainer="yuanqiang.luo<luoyuanq233@gmail.com>"

WORKDIR /opt/jpress

COPY ./starter/target/starter-4.0/ /opt/jpress/
COPY ./docker/files/jpress.sh /opt/jpress/jpress.sh
COPY ./docker/files/jboot.properties /opt/jpress/config/jboot.properties


RUN chmod +x /opt/jpress/jpress.sh &&  \
    rm -rf /opt/jpress/jpress.bat && \
    rm -rf /opt/jpress/config/undertow.txt && \
    rm -rf /opt/jpress/config/install.lock

EXPOSE 8080

CMD ["/opt/jpress/jpress.sh", "start"]