#!/bin/bash

docker build -t mage2cookbook-docker .

echo To publish use:
echo docker tag mage2cookbook-docker raybogman/mage2cookbook-docker
echo docker tag mage2cookbook-docker raybogman/mage2cookbook-docker:2.0.0
echo docker push raybogman/mage2cookbook-docker:2.0.0
