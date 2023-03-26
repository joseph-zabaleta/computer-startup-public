#!/bin/bash

if [ "$1x" == "x" ]; then
  git stash;
else
  git stash save -m "{$1}";
fi