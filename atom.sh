#!/bin/bash

if [ -f "/devhome/.atom/config.cson" ]; then
  # remove old config.cson from previous version
  rm -rf /devhome/.atom/config.cson
fi
if [ ! -f "/config/atocker/config.cson" ]; then
  cp /devhome/config.cson /config/atocker/config.cson
fi
ln -s /config/atocker/config.cson /devhome/.atom/config.cson

if [ ! -d "/devhome/.atom/storage" ]; then
cd /work && $ATOM --foreground .
else
cd /work && $ATOM --foreground
fi
