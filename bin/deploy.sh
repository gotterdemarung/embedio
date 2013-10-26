#!/bin/bash

PATH_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${PATH_SCRIPT}"/../"

composer update

# Frontend vendor folder
mkdir htdocs/vendor

# Twitter bootstrap
ln -fs vendor/twitter/boostrap/dist htdocs/vendor/bootstrap
