FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

EXPOSE 8080
ENTRYPOINT ["/opt/mmonit/bin/mmonit", "-i"]

RUN curl -o /mmonit.tar.gz https://mmonit.com/dist/mmonit-3.4-linux-x64.tar.gz && \
    mkdir -p /opt/mmonit && \
    tar xf /mmonit.tar.gz --strip-components=1 -C /opt/mmonit
