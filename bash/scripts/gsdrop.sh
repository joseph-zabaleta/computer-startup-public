#!/bin/bash

if [ "$1x" == "x" ]; then
  git stash drop;
else
  git stash drop stash@{$1};
fi