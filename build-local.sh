#!/bin/bash

VERSION=$(date +%Y-%m-%d_%H_%M_%S)

docker build -t "gmg-adviser-qrload-service:$VERSION" .
