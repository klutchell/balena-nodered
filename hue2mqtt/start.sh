#!/bin/bash

params=" "
[ -n "${VERBOSITY:-}" ] && params+="-v ${VERBOSITY} "
[ -n "${NAME:-}" ] && params+="-n ${NAME} "
[ -n "${MQTT_URL:-}" ] && params+="-m ${MQTT_URL} "
[ -n "${BRIDGE:-}" ] && params+="-b ${BRIDGE} "
[ -n "${POLLING_INTERVAL:-}" ] && params+="-p ${POLLING_INTERVAL} "
[ -n "${PUBLISH_DISTINCT:-}" ] && params+="-d ${PUBLISH_DISTINCT} "

[ "${DISABLE_NAMES:-false}" == true ] && params+="--disable-names "
[ "${MQTT_RETAIN:-true}" == true ] && params+="--mqtt-retain "
[ "${INSECURE:-false}" == true ] && params+="--insecure "

hue2mqtt ${params}

