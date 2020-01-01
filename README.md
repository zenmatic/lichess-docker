# run lichess locally for developing

Development instructions can be found [here](https://github.com/ornicar/lila/wiki/Lichess-Development-Onboarding)

## generate (or find) a GeoLite City mmdb file

Instructions [here](util/mmdb/README.md).

## build and run

```
git clone --recursive https://github.com/zenmatic/lichess-docker.git
cd lichess-docker
docker-compose build
docker-compose up -d
```

To view the site, go to http://localhost/about
