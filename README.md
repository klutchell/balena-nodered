# resin-nodered

[resin.io](https://resin.io/) stack with the following services:
* [node-red iot interface](https://nodered.org/)
* [cloud9 web ide](https://c9.io/)
* [ssh server](https://www.ssh.com/ssh/)

## Getting Started

* https://docs.resin.io/learn/getting-started

## Deployment

```yaml
# example docker-compose.yml
version: '2.1'

volumes: 
  node-red-data:
  mosquitto-data:
  hue2mqtt-config:
  cloud9-workspace:
  ssh-data:
  
services:

  node-red:
    build: ./node-red
    ports:
      - '80:1880'
    volumes:
      - 'node-red-data:/data'

  mosquitto: 
    image: reverie/arm32v7-mosquitto
    ports:
      - '1883:1883'
    volumes:
      - 'mosquitto-data:/etc/mosquitto'

  hue2mqtt:
    build: ./hue2mqtt
    volumes:
      - 'hue2mqtt-config:/root/.hue2mqtt'

  ssh:
    image: klutchell/resin-ssh
    ports:
      - '22:22'
    volumes:
      - 'ssh-data:/root/.ssh'
      - 'cloud9-workspace:/cloud9-workspace'
      - 'node-red-data:/node-red-data'
      - 'mosquitto-data:/mosquitto-data'

  cloud9:
    build: ./cloud9
    ports:
      - '8080:8080'
    volumes:
      - 'ssh-data:/root/.ssh'
      - 'cloud9-workspace:/cloud9-workspace'
      - 'node-red-data:/node-red-data'
      - 'mosquitto-data:/mosquitto-data'
```

## Usage

* [node-red-docker](https://github.com/node-red/node-red-docker)
* [cloud9](cloud9/README.md)
* [ssh](https://github.com/klutchell/resin-ssh)

## Author

Kyle Harding <kylemharding@gmail.com>

## License

_tbd_

## Acknowledgments

* https://github.com/node-red/node-red-docker

