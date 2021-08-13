#!/bin/bash

docker-compose up -d
brctl addif ixdockernet veth-ix-docker
