# generate an mmdb file

The container generates a faux mmdb file at /data.mmdb.  This probably should
be changed to a var.

```
IMG=zenmatic/mmdb:1.0
docker build -t $IMG .

DBFILE=GeoLite2-City.mmdb
touch $DBFILE
docker run -v $PWD/$DBFILE:/data.mmdb $IMG
```
