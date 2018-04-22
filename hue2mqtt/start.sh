#!/bin/bash

hue2mqtt -b ${BRIDGE_IP} -m mqtt://${BROKER_IP} -p 1

