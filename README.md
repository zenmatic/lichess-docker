# run lichess locally for developing

Development instructions can be found [here](https://github.com/ornicar/lila/wiki/Lichess-Development-Onboarding)

## generate (or find) a GeoLite City mmdb file

Instructions [here](util/mmdb/README.md).

## add the following to your /etc/hosts file:

```
127.0.0.1	localhost www.lichess.local ws.lichess.local assets.lichess.local
```

## build and run

build prerequisite of lichess image:
inspired by [this](https://raw.githubusercontent.com/hseeberger/scala-sbt/master/debian/Dockerfile)
```
docker build \
  --build-arg BASE_IMAGE_TAG="15-slim" \
  --build-arg SBT_VERSION="1.3.7" \
  --build-arg SCALA_VERSION="2.13.1" \
  -t lichess/scala-sbt:15-slim \
  -f Dockerfile.scala-sbt .
```

```
git clone --recursive https://github.com/zenmatic/lichess-docker.git
cd lichess-docker
docker-compose build
docker-compose up -d
```

To view the site, go to http://www.lichess.local/

## login using the following accounts

matto for a normal user and supermatto for the superuser.  The password is
this.foobar.is.forever for both.
