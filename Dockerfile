FROM openjdk:8u212 AS dl
WORKDIR /tmp
RUN wget https://piccolo.link/sbt-0.13.18.tgz \
        && tar zxf sbt-0.13.18.tgz

FROM openjdk:8u212 AS compile
COPY --from=dl /tmp/sbt /tmp/sbt
WORKDIR /tmp/sbt
RUN mkdir -p /root/.ivy2/cache \
        && cp -a lib/* /root/.ivy2/cache/ \
        && bin/sbt -batch \
        && cp -a bin/* /usr/bin/

## compile the Scala application
FROM openjdk:8u212
COPY --from=compile /root/.ivy2 /root/.ivy2
COPY --from=compile /usr/bin /usr/bin
COPY lila /home/lichess/projects/lila
WORKDIR /home/lichess/projects/lila
RUN ./bin/dev.default compile
ENTRYPOINT ["./bin/dev.default"]
CMD ["run"]
