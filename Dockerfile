## compile the Scala application
FROM mozilla/sbt:8u212_1.3.4
COPY lila /home/lichess/projects/lila 
WORKDIR /home/lichess/projects/lila
RUN ./bin/dev.default compile
ENTRYPOINT ["./bin/dev.default"]
CMD ["run"]
