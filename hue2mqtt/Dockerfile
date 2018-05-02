FROM resin/raspberrypi3-node

LABEL maintainer="kylemharding@gmail.com"

# allow building on x86
RUN test -n "$(uname -m | grep 'arm')" \
	&& echo 'building on arm' \
	|| cross-build-start

WORKDIR /usr/src/hue2mqtt

RUN git clone --depth 1 https://github.com/klutchell/hue2mqtt.js.git . \
	&& npm install

COPY start.sh /usr/bin/start.sh

CMD [ "/usr/bin/start.sh" ]

# end cross build
RUN test -n "$(uname -m | grep 'arm')" \
	&& echo 'building on arm' \
	|| cross-build-end

