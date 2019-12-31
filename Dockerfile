## install svgcleaner via the Rust package manager, Cargo.
FROM rust:1.37 AS rust
RUN cargo install svgcleaner

## build nodejs stuff
FROM node:10.18-jessie AS node
RUN yarn global add gulp-cli
ADD lila /home/lichess/projects/lila
WORKDIR /home/lichess/projects/lila
RUN ./ui/build

## compile the Scala application
FROM mozilla/sbt:8u212_1.3.4
COPY --from=rust /usr/local/cargo/bin/svgcleaner /usr/bin/svgcleaner
COPY --from=node /home/lichess/projects/lila /home/lichess/projects/lila 
WORKDIR /home/lichess/projects/lila
RUN ./bin/dev.default compile
ENTRYPOINT ["./bin/dev.default"]
CMD ["run"]
