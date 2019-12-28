# run lichess locally for developing

Development instructions can be found [here](https://github.com/ornicar/lila/wiki/Lichess-Development-Onboarding)

## build and run

```
git clone https://github.com/zenmatic/lichess-docker.git
cd lichess-docker
git clone --recursive https://github.com/ornicar/lila.git
cp application.conf lila/conf/application.conf
docker-compose build
docker-compose up -d
```

To view the site, go to http://localhost/about
