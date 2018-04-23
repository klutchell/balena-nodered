#!/bin/bash

cat >./config.json <<EOL
{
  "hue": {
    "host": "${BRIDGE_IP:-}",
    "username": "${BRIDGE_USER:-}"
  },
  "mqtt": {
    "url": "tcp://${BROKER_IP:-localhost}:1883",
    "baseTopic": "${MQTT_PREFIX:-hue}",
    "clientId": "huejay-mqtt-bridge"
  }
}
EOL

node index.js

