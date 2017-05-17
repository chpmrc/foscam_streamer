#!/usr/bin/env bash

FILENAME='node-v6.10.3-linux-armv7l'

wget https://nodejs.org/dist/v6.10.3/${FILENAME}.tar.gz

sudo mv ${FILENAME}.tar.gz /opt

cd /opt

sudo tar -xzf ${FILENAME}.tar.gz

sudo mv ${FILENAME} nodejs

sudo rm ${FILENAME}.tar.gz

sudo ln -sf /opt/nodejs/bin/node /usr/bin/node

sudo ln -sf /opt/nodejs/bin/npm /usr/bin/npm

cd -
