#!/bin/bash
echo "Creating HDF Sandbox Container:"
until docker ps 2>&1| grep STATUS>/dev/null; do  sleep 1; done; >/dev/null
wget https://downloads-hortonworks.akamaized.net/sandbox-hdf-3.0/HDF_3.0_docker_12_6_2017.tar.gz
docker import ./HDF_3.0_docker_12_6_2017.tar.gz
