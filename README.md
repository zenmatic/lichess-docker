# run lichess locally for developing

Development instructions can be found [here](https://github.com/ornicar/lila/wiki/Lichess-Development-Onboarding)

## build and run

```
git clone https://github.com/zenmatic/lichess-docker.git
cd lichess-docker
git clone --recursive https://github.com/ornicar/lila.git
(cd lila && git checkout 1de207d05eacdb9cb99fcaf8ef8743b217b332d8)
git clone https://github.com/ornicar/lila-ws.git
(cd lila-ws && git checkout 20b2d8638198236bc6be16426444e959c7286958)
docker-compose build
docker-compose up -d
```

To view the site, go to http://localhost/about
