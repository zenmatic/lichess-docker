FROM perl:5.28

RUN cpanm MaxMind::DB::Writer::Tree \
        && mkdir -p /usr/src/app
COPY run.pl /usr/src/app/run.pl
WORKDIR /usr/src/app
CMD ["./run.pl"]
