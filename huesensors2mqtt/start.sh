#!/bin/bash

if [ ! -e /data/config.json ]
then
	cp -a ./config.sample.json /data/config.json
fi

if [ ! -e ./config.json ]
then
	ln -s ./config.json /data/config.json
fi

node index.js

