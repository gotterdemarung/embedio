#!/bin/bash

PATH_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${PATH_SCRIPT}"/../"

FQN="$(pwd)"

composer update

# Frontend vendor folder
mkdir ${FQN}/htdocs/vendor

# Twitter bootstrap
ln -fs ${FQN}/vendor/twitter/bootstrap/dist ${FQN}/htdocs/vendor/bootstrap
