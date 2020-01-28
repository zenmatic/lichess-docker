FROM mozilla/sbt:8u232_1.3.7
COPY lila /home/lichess/projects/lila
WORKDIR /home/lichess/projects/lila
RUN ./lila clean
RUN ./lila compile 
RUN ./lila publishLocal
ENTRYPOINT ["./lila"]
CMD ["run"]
