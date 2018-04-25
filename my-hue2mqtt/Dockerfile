FROM arm32v7/node:slim

# set timezone
ENV TZ America/Toronto
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/src/hue2mqtt

RUN git clone https://github.com:klutchell/hue2mqtt.js.git . \
	&& npm install

COPY start.sh /usr/bin/start.sh

CMD [ "/usr/bin/start.sh" ]

