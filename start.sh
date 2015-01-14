#! /bin/sh

cd /CouchPotatoServer
touch /config/CouchPotato.cfg
mkdir -p /config/data 2> /dev/null

/usr/bin/python /CouchPotatoServer/CouchPotato.py --data_dir /config/data --config_file /config/CouchPotato.cfg --console_log
