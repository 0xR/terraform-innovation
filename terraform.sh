#!/usr/bin/env bash

params=()
if [ "$1" == init ]; then
  params+=(-backend-config "backend-config/$(whoami).hcl")
fi

terraform "$@" -var-file "environments/$(whoami).tfvars"  "${params[@]}"
