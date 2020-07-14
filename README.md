# run lichess locally for developing

Development instructions can be found [here](https://github.com/ornicar/lila/wiki/Lichess-Development-Onboarding)

## generate (or find) a GeoLite City mmdb file

Instructions [here](util/mmdb/README.md).

## add the following to your /etc/hosts file:

```
127.0.0.1	localhost www.lichess.local ws.lichess.local assets.lichess.local
```

## checkout code

```
git clone --recursive https://github.com/zenmatic/lichess-docker.git
cd lichess-docker
```

## build and run

build prerequisite images.  scala-sbt image 
inspired by [this](https://raw.githubusercontent.com/hseeberger/scala-sbt/master/debian/Dockerfile)

```
./build.sh
docker-compose build
docker-compose up -d
```

To view the site, go to http://www.lichess.local/

## login using the following accounts

matto for a normal user and supermatto for the superuser.  The password is
this.foobar.is.forever for both.
