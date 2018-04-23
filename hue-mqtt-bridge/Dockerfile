FROM arm32v7/node

# set timezone
ENV TZ America/Toronto
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/src/hue-mqtt-bridge

RUN git clone git://github.com/dale3h/hue-mqtt-bridge.git . \
	&& npm install

COPY start.sh /usr/bin/start.sh

CMD [ "/usr/bin/start.sh" ]

