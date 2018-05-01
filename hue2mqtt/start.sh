#!/bin/sh

params=" "
[ -n "${VERBOSITY:-}" ] && params+="-v ${VERBOSITY} "
[ -n "${MQTT_PREFIX:-}" ] && params+="-n ${MQTT_PREFIX} "
[ -n "${MQTT_URL:-}" ] && params+="-m ${MQTT_URL} "
[ -n "${BRIDGE_IP:-}" ] && params+="-b ${BRIDGE_IP} "
[ -n "${POLLING_INTERVAL:-}" ] && params+="-i ${POLLING_INTERVAL} "
[ -n "${PUBLISH_DISTINCT:-}" ] && params+="-d ${PUBLISH_DISTINCT} "

[ "${DISABLE_NAMES:-false}" == true ] && params+="--disable-names "
[ "${MQTT_RETAIN:-true}" == true ] && params+="--mqtt-retain "
[ "${INSECURE:-false}" == true ] && params+="--insecure "

node index.js ${params}

