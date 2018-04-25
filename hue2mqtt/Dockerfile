FROM arm32v7/node:slim

# set timezone
ENV TZ America/Toronto
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /usr/src/hue2mqtt

RUN npm install -g hue2mqtt

CMD [ "hue2mqtt" ]

