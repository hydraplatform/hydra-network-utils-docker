#!/usr/bin/env bash

pip install pipenv
pipenv install --system --deploy

# Clean up the cache
rm -rf ~/.cache/pip
