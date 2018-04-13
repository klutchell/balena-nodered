FROM nodered/node-red-docker:rpi-v8

USER root

# set timezone
ENV TZ=America/Toronto
RUN echo $TZ > /etc/timezone && dpkg-reconfigure tzdata

USER node-red
