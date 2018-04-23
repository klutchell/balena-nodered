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
      "interval": ${BRIDGE_INT:-500},
      "prefix": "${BRIDGE_PRE:-hue}"
    }
  ]
}
EOL

npm start

