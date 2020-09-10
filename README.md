[![Overview Image](https://ix.quant.one/graylog2_ansible_cover)](https://ix.quant.one/GraylogAnsible)

# Gain Control over Log Events with Graylog and Ansible

**Author**: [Sar Malik](https://github.com/sar)

## Getting Started

Learn how to deploy a centralized log analytics and event monitoring server with Graylog in Docker and remotely update clients with Ansible Playbook routines. 

Read the accompanying [guide](https://ix.quant.one/GraylogAnsible) to this code repository to get started.

## Tech Stack

|graylog/graylog|||
|---|---|---|
|[![Docker Stars](https://img.shields.io/docker/stars/graylog/graylog.svg)](https://github.com/Graylog2/graylog-docker/) | [![Image Size](https://images.microbadger.com/badges/image/graylog/graylog:3.3.svg)](https://microbadger.com/images/graylog/graylog) | [![Image Version](https://images.microbadger.com/badges/version/graylog/graylog:3.3.svg)](https://microbadger.com/images/graylog/graylog) |

|_/mongo|||
|---|---|---|
|[![Github Stars](https://img.shields.io/github/stars/docker-library/mongo)](https://github.com/docker-library/mongo) | [![Image Size](https://images.microbadger.com/badges/image/mongo:3.svg)](https://microbadger.com/images/mongo:3) | [![Image Version](https://images.microbadger.com/badges/version/mongo:3.svg)](https://microbadger.com/images/mongo:3) |

|_/elasticsearch|||
|---|---|---|
|[![Docker Stars](https://img.shields.io/docker/stars/_/elasticsearch.svg)](https://github.com/docker-library/elasticsearch) | [![Image Size](https://images.microbadger.com/badges/image/elasticsearch:6.8.1.svg)](https://microbadger.com/images/_/elasticsearch) | [![Image Version](https://images.microbadger.com/badges/version/elasticsearch:6.8.1.svg)](https://microbadger.com/images/_/elasticsearch) |

|Ansible|
|---|
|[![Github Stars](https://img.shields.io/github/stars/ansible/ansible)](https://github.com/ansible/ansible) |

## Usage

Clone this repository onto the docker host where containers will be built using relative volume paths.

1. Update the configuration files provided in [server](server) and run the following command to spin up a container stack.

    ```bash
    $ docker-compose -f docker-compose.yaml up
    ```

2. Navigate to the Graylog server and open an input worker with ``tcp/514 || udp/514`` ports.

3. Configure unix [clients](client) with `rsyslog` systemd service to push all log messages to the Graylog server with the provided playbook.

    ```bash
    $ ansible-playbook -i target.env \
        -k --ask-become-pass \
        configure_rsyslog.yaml
    ```

4. Explore streaming log messages, create dashboards, and run custom queries using the Graylog webserver on `http://<<graylog_host>>:<<port>>`.

## Structure

```
.
├── .gitignore
├── README.md
├── LICENSE.md
├── client
│   ├── ansible.setup.sh
│   ├── configure_rsyslog.yaml
│   ├── rsyslog.conf
│   └── target.env
└── server
    ├── config.sh
    ├── docker-compose.yaml
    ├── graylog.conf
    ├── mongo.env
    ├── mongo-init.js
    ├── rotatekey.sh
    └── shasum.sh

```

## License

This repository is released under [MIT License](LICENSE.md).

* * *

[![Quant ONE](https://ix.quant.one/logo-dark)](https://quant.one/)