#!/bin/bash

exec conda env export -p $(pwd)/.pyenv | grep -iE "^(?name:|prefix:).*$" -v > pyenv.yml