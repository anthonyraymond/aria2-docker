#!/usr/bin/env bash
shopt -s dotglob nullglob && /usr/bin/aria2c --dir=/data/downloads/ --conf-path=/home/aria/.aria2/aria2.conf /data/downloads/*.torrent
