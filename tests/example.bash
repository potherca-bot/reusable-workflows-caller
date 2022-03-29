#!/usr/bin/env bash

function example_function() {
  local -r sName="${1?One parameter required: <name>}"
  echo Hello, ${sName}!
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  example_function "${@}"
else
  export -f example_function
fi
