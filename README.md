## postgis client to work with geodata
- exec into the container `docker exec -it containername /bin/bash`
- if public is not your default schema:
- -  changed the  `search_path` of the role used to ingest shapefile, to the schema with the postgis installation:
```pg 
ALTER role ****
SET search_path = public
```
- ogr2ogr tool to ingest:
```sh 
ogr2ogr -f "PostgreSQL" PG:"dbname='gisdb' host='LDC2HOST' port='5435' user='******' password='*******' ACTIVE_SCHEMA='public'" /external/MLRA_52.shp -lco SCHEMA=public -nlt PROMOTE_TO_MULTI -nln mlra_2022 -s_srs EPSG:4326 -t_srs EPSG:4326
```