FROM arm32v7/node

WORKDIR /usr/src/hue2mqtt

RUN git clone --depth 1 https://github.com/klutchell/hue2mqtt.js.git . \
	&& npm install

COPY start.sh /usr/bin/start.sh

CMD [ "/usr/bin/start.sh" ]

