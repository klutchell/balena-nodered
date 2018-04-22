#!/bin/bash

if [ ! -e /data/config.json ]
then
	cp -a ./config.sample.json /data/config.json
fi

if [ ! -e ./config.json ]
then
	ln -s /data/config.json ./config.json
fi

npm start

