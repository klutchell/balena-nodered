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
  ssh-data:
  
services:

  node-red:
    build: ./node-red
    ports:
      - '80:1880'
    volumes:
      - 'node-red-data:/data'

  ssh:
    build: ./ssh
    ports:
      - '22:22'
    volumes:
      - 'ssh-data:/root/.ssh'
      - 'node-red-data:/data'

  cloud9:
    build: ./cloud9
    ports:
      - '8080:8080'
    volumes:
      - 'ssh-data:/root/.ssh'
      - 'node-red-data:/data'
```

## Usage

* [node-red-docker](https://github.com/node-red/node-red-docker)
* [cloud9](cloud9/README.md)
* [ssh](ssh/README.md)

## Author

Kyle Harding <kylemharding@gmail.com>

## License

_tbd_

## Acknowledgments

* https://github.com/node-red/node-red-docker

