#!/usr/bin/env bash

set -e

function main() {
  echo "hello world: $@"
  if [[ "$1" == "false" ]];then
    exit 1
  fi
}

if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f main
else
  main "${@}"
  exit $?
fi
