# run lichess locally for developing

Development instructions can be found [here](https://github.com/ornicar/lila/wiki/Lichess-Development-Onboarding)

## generate (or find) a GeoLite City mmdb file

Instructions [here](util/mmdb/README.md).

## add the following to your /etc/hosts file:

```
127.0.0.1	localhost www.lichess.local ws.lichess.local assets.lichess.local
```

## build and run

```
git clone --recursive https://github.com/zenmatic/lichess-docker.git
cd lichess-docker
docker-compose build
docker-compose up -d
```

To view the site, go to http://www.lichess.local/
