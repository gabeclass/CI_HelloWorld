#!/bin/bash

if   [ -z "${TRAVIS_CI_ENV}" ]; then
  echo "Please set the TRAVIS_CI_ENV environment variable"
  exit 1
elif [ "${TRAVIS_CI_ENV}" != "Hello, World" ]; then 
  echo "TRAVIS_CI_ENV value is ill-suited for this tutorial"
  exit 2
fi

