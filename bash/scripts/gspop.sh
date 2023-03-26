#!/bin/bash
if [ "$1x" == "x" ]; then
  git stash pop;
else
  git stash pop stash@{$1};
fi