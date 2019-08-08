#!/bin/bash

exec conda env export -p /home/shadow8t4/git/rf-selenium-testing/.pyenv | grep -iE "^(?name:|prefix:).*$" -v > pyenv.yml