#!/bin/bash

mkdir -p /root/.hue-mqtt-bridge 2>/dev/null || true

if [ ! -e /root/.hue-mqtt-bridge/config.json ]
then
	cp -a ./config.sample.json /root/.hue-mqtt-bridge/config.json
fi

if [ ! -e ./config.json ]
then
	ln -s /root/.hue-mqtt-bridge/config.json ./config.json
fi

npm start

