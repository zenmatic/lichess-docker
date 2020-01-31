FROM lichess/scala-sbt:15-slim
COPY lila /home/lichess/projects/lila
WORKDIR /home/lichess/projects/lila
RUN ./lila clean
RUN ./lila compile 
RUN ./lila publishLocal
ENTRYPOINT ["./lila"]
CMD ["run"]
