FROM hseeberger/scala-sbt:11.0.6_1.3.7_2.13.1
COPY lila /home/lichess/projects/lila
WORKDIR /home/lichess/projects/lila
RUN ./lila clean
RUN ./lila compile 
RUN ./lila publishLocal
ENTRYPOINT ["./lila"]
CMD ["run"]
