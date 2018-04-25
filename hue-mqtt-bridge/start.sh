#!/bin/bash

cat >./config.json <<EOL
{
  "broker": {
    "host": "${MQTT_IP:-localhost}",
    "username": "${MQTT_USERNAME:-}",
    "password": "${MQTT_PASSWORD:-}"
  },
  "bridges": [
    {
      "host": "${BRIDGE_IP:-}",
      "username": "${BRIDGE_USER:-}",
      "interval": ${POLLING_INTERVAL:-500},
      "prefix": "${MQTT_PREFIX:-hue}"
    }
  ]
}
EOL

npm start

