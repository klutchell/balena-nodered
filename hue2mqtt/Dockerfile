FROM resin/raspberrypi3-node

LABEL maintainer="kylemharding@gmail.com"

# allow building on x86
# RUN [ "cross-build-start" ]

WORKDIR /usr/src/hue2mqtt

RUN git clone --depth 1 https://github.com/klutchell/hue2mqtt.js.git . \
	&& npm install

# install start script
COPY start.sh /usr/bin/start.sh

# run start script on boot
CMD [ "/usr/bin/start.sh" ]

# end cross build
# RUN [ "cross-build-end" ]

