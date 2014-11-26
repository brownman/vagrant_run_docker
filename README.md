[![Build Status](https://travis-ci.org/brownman/vagrant_run_docker.svg)](https://travis-ci.org/brownman/vagrant_run_docker)

# Node.js Hello World

Node.js Hello World on Ubuntu using [docker][].

## Prerequisites

- [Docker][]

## Overview

-   Run app:

         docker run -d -p :8001 xxdesmus/ubuntu-node-hello

-   Install `curl`:

        sudo apt-get install curl

-   Get mapped port (last column) using, e.g. 49160:

        docker ps

        > # Example
        > ID                  IMAGE                           COMMAND              CREATED             STATUS              PORTS
        > ecce33b30ebf        xxdesmus/ubuntu-node-hello   node /src/index.js   10 seconds ago      Up 9 seconds        49160->8080

## Testing

-   Test app using the port in previous step, e.g. 49160:

        curl localhost:<port>

        # Example
        # curl localhost:49163

    It should print `Hello World` to the console.

    You can now also open YOUIP:8001 in a browser and see "Hellow world".

## Acknowledgements

Many thanks to https://github.com/gasi/docker-node-hello

[docker]: http://docker.io
