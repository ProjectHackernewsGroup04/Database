#! /bin/bash

docker exec -it app_db_1 mongoimport -d hackernews -c items --file /testdata/items.json --jsonArray