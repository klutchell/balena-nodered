#!/bin/bash

cat >./config.json <<EOL
{
  "broker": {
    "host": "${BROKER_IP:-localhost}",
    "username": "${BROKER_USER:-}",
    "password": "${BROKER_PASS:-}"
  },
  "bridges": [
    {
      "host": "${BRIDGE_IP:-}",
      "username": "${BRIDGE_USER:-}",
      "interval": ${POLL_INTERVAL:-500},
      "prefix": "${MQTT_PREFIX:-hue}"
    }
  ]
}
EOL

npm start

