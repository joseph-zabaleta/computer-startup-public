#!/bin/bash

if [ "$1x" == "x" ]; then
  git stash apply;
else
  git stash apply stash@{$1};
fi